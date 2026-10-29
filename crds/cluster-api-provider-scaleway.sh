#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "infrastructure.cluster.x-k8s.io_scalewayclusters.yaml"
  "infrastructure.cluster.x-k8s.io_scalewayclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_scalewaymachines.yaml"
  "infrastructure.cluster.x-k8s.io_scalewaymachinetemplates.yaml"
  "infrastructure.cluster.x-k8s.io_scalewaymanagedclusters.yaml"
  "infrastructure.cluster.x-k8s.io_scalewaymanagedcontrolplanes.yaml"
  "infrastructure.cluster.x-k8s.io_scalewaymanagedmachinepools.yaml"
)

# renovate: datasource=github-tags depName=scaleway/cluster-api-provider-scaleway
export VERSION=0.2.3

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/scaleway/cluster-api-provider-scaleway/refs/tags/v${VERSION}/config/crd/bases/${crd_file}"
}
