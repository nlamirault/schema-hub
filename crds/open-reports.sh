#!/usr/bin/env bash
# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "openreports.io_clusterreports.yaml"
  "openreports.io_reports.yaml"
)

# renovate: datasource=github-tags depName=openreports/reports-api
export VERSION=0.2.1

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/openreports/reports-api/refs/tags/v${VERSION}/config/crd/${crd_file}"
}
