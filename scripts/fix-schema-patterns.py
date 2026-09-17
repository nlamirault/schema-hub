#!/usr/bin/env python3

# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

"""Escape stray '[' inside character classes of JSON Schema 'pattern' values.

Some upstream CRDs ship regex patterns with an unescaped '[' inside a
character class, e.g.:
  [-_.[A-Za-z0-9]+@[-_.[A-Za-z0-9]+.iam.gserviceaccount.com

Per ECMA-262 (the dialect JSON Schema mandates) a '[' inside a class is a
literal, so kube-apiserver accepts it. Stricter engines such as the Rust
`jsonschema` crate used for validation reject it as an invalid regex.

This pass rewrites every 'pattern' string, escaping only a literal '[' that
appears inside a character class ('\\[') while leaving the opening bracket of
the class and any already-escaped '\\[' untouched. The transform preserves the
original intent (the class simply also matches a literal '[').
"""

import json
import os
import sys


def escape_stray_class_brackets(pattern: str) -> str:
    out = []
    in_class = False  # currently inside a [...] character class
    escaped = False  # previous char was an unescaped backslash
    class_pos = -1  # index within the current class (0 == just after '[')

    for ch in pattern:
        if escaped:
            out.append(ch)
            escaped = False
            if in_class:
                class_pos += 1
            continue
        if ch == "\\":
            out.append(ch)
            escaped = True
            if in_class:
                class_pos += 1
            continue
        if not in_class:
            if ch == "[":
                in_class = True
                class_pos = 0
            out.append(ch)
            continue
        # inside a character class
        if ch == "]" and class_pos > 0:
            # a ']' as the first class char is a literal, not a terminator;
            # class_pos accounts for a leading '^' too via the increments below
            in_class = False
            out.append(ch)
            continue
        if ch == "[":
            # stray literal '[' inside the class -> escape it
            out.append("\\[")
            class_pos += 1
            continue
        out.append(ch)
        class_pos += 1

    return "".join(out)


def fix_patterns(obj: object) -> tuple[object, int]:
    count = 0
    if isinstance(obj, dict):
        result = {}
        for k, v in obj.items():
            if k == "pattern" and isinstance(v, str):
                fixed = escape_stray_class_brackets(v)
                if fixed != v:
                    count += 1
                result[k] = fixed
            else:
                new_v, c = fix_patterns(v)
                result[k] = new_v
                count += c
        return result, count
    if isinstance(obj, list):
        new_list = []
        for item in obj:
            new_item, c = fix_patterns(item)
            new_list.append(new_item)
            count += c
        return new_list, count
    return obj, count


def main(schemas_dir: str) -> None:
    schemas_dir = os.path.abspath(schemas_dir)
    fixed = 0
    skipped = 0

    for root, _, files in os.walk(schemas_dir):
        for fname in sorted(files):
            if not fname.endswith(".json"):
                continue
            fpath = os.path.join(root, fname)
            with open(fpath) as f:
                try:
                    schema = json.load(f)
                except json.JSONDecodeError:
                    skipped += 1
                    continue

            new_schema, count = fix_patterns(schema)
            if count > 0:
                with open(fpath, "w") as f:
                    json.dump(new_schema, f, indent=2)
                    f.write("\n")
                fixed += 1

    print(f"Fixed invalid patterns in {fixed} schema files ({skipped} skipped)")


if __name__ == "__main__":
    schemas_dir = sys.argv[1] if len(sys.argv) > 1 else "schemas"
    main(schemas_dir)
