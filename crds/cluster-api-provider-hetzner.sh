#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "infrastructure.cluster.x-k8s.io_hcloudmachines.yaml"
  "infrastructure.cluster.x-k8s.io_hcloudmachinetemplates.yaml"
  "infrastructure.cluster.x-k8s.io_hcloudremediations.yaml"
  "infrastructure.cluster.x-k8s.io_hcloudremediationtemplates.yaml"
  "infrastructure.cluster.x-k8s.io_hetznerbaremetalhosts.yaml"
  "infrastructure.cluster.x-k8s.io_hetznerbaremetalmachines.yaml"
  "infrastructure.cluster.x-k8s.io_hetznerbaremetalmachinetemplates.yaml"
  "infrastructure.cluster.x-k8s.io_hetznerbaremetalremediations.yaml"
  "infrastructure.cluster.x-k8s.io_hetznerbaremetalremediationtemplates.yaml"
  "infrastructure.cluster.x-k8s.io_hetznerclusters.yaml"
  "infrastructure.cluster.x-k8s.io_hetznerclustertemplates.yaml"
)

# renovate: datasource=github-tags depName=syself/cluster-api-provider-hetzner
export VERSION=1.1.10

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/syself/cluster-api-provider-hetzner/refs/tags/v${VERSION}/config/crd/bases/${crd_file}"
}
