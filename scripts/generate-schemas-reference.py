# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

"""Regenerate docs/reference/schemas.md from sources.yaml.

sources.yaml is the canonical list of operators/controllers and the API
groups they contribute. This script keeps the reference documentation in
sync with it instead of hand-maintaining a duplicate list.
"""

import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
SOURCES_FILE = ROOT / "sources.yaml"
DOC_FILE = ROOT / "docs" / "reference" / "schemas.md"

BEGIN_MARKER = "<!-- BEGIN GENERATED: generate-schemas-reference.py -->"
END_MARKER = "<!-- END GENERATED: generate-schemas-reference.py -->"

GROUP_INLINE_LIMIT = 3


def format_groups(groups: list[str], source_id: str) -> str:
    if len(groups) <= GROUP_INLINE_LIMIT:
        return ", ".join(f"`{g}`" for g in groups)
    return f"{len(groups)} API groups — see `sources.yaml` (`{source_id}`)"


def render_table(sources: list[dict]) -> str:
    lines = [
        "| Application | Upstream | API groups |",
        "| ------------ | -------- | ---------- |",
    ]
    for source in sorted(sources, key=lambda s: s["name"].lower()):
        upstream = source.get("upstream", "")
        upstream_cell = f"[{upstream}](https://github.com/{upstream})" if upstream else "—"
        lines.append(
            f"| {source['name']} | {upstream_cell} | "
            f"{format_groups(source.get('groups', []), source['id'])} |"
        )
    return "\n".join(lines)


def render_body(data: dict) -> str:
    sources = data["sources"]
    categories = sorted({s["category"] for s in sources})

    total_sources = len(sources)
    total_groups = sum(len(s.get("groups", [])) for s in sources)

    sections = [
        f"_{total_sources} operators and controllers, {total_groups} API groups. "
        "Generated from `sources.yaml` — do not edit this section by hand; "
        "run `make docs-schemas` after changing `sources.yaml`._",
        "",
    ]
    for category in categories:
        items = [s for s in sources if s["category"] == category]
        sections.append(f"## {category}")
        sections.append("")
        sections.append(render_table(items))
        sections.append("")
        sections.append("---")
        sections.append("")
    return "\n".join(sections).rstrip() + "\n"


def main() -> int:
    data = yaml.safe_load(SOURCES_FILE.read_text())
    doc = DOC_FILE.read_text()

    if BEGIN_MARKER not in doc or END_MARKER not in doc:
        print(
            f"error: {DOC_FILE} is missing the generated-section markers "
            f"({BEGIN_MARKER} / {END_MARKER})",
            file=sys.stderr,
        )
        return 1

    before, rest = doc.split(BEGIN_MARKER, 1)
    _, after = rest.split(END_MARKER, 1)

    new_doc = f"{before}{BEGIN_MARKER}\n\n{render_body(data)}\n{END_MARKER}{after}"
    DOC_FILE.write_text(new_doc)
    print(f"wrote {DOC_FILE}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
