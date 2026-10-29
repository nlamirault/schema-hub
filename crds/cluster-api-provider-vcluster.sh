#!/usr/bin/env bash
# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "infrastructure.cluster.x-k8s.io_vclusters.yaml"
)

# renovate: datasource=github-tags depName=loft-sh/cluster-api-provider-vcluster
export VERSION=0.2.2

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/loft-sh/cluster-api-provider-vcluster/refs/tags/v${VERSION}/config/crd/bases/${crd_file}"
}
