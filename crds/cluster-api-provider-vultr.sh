#!/usr/bin/env bash
# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "infrastructure.cluster.x-k8s.io_vultrbaremetalmachines.yaml"
  "infrastructure.cluster.x-k8s.io_vultrbaremetalmachinetemplates.yaml"
  "infrastructure.cluster.x-k8s.io_vultrclusters.yaml"
  "infrastructure.cluster.x-k8s.io_vultrclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_vultrmachines.yaml"
  "infrastructure.cluster.x-k8s.io_vultrmachinetemplates.yaml"
)

# renovate: datasource=github-tags depName=vultr/cluster-api-provider-vultr
export VERSION=0.6.0

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/vultr/cluster-api-provider-vultr/refs/tags/v${VERSION}/config/crd/bases/${crd_file}"
}
