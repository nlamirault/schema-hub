#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "infrastructure.cluster.x-k8s.io_azureasomanagedclusters.yaml"
  "infrastructure.cluster.x-k8s.io_azureasomanagedclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_azureasomanagedcontrolplanes.yaml"
  "infrastructure.cluster.x-k8s.io_azureasomanagedcontrolplanetemplates.yaml"
  "infrastructure.cluster.x-k8s.io_azureasomanagedmachinepools.yaml"
  "infrastructure.cluster.x-k8s.io_azureasomanagedmachinepooltemplates.yaml"
  "infrastructure.cluster.x-k8s.io_azureclusteridentities.yaml"
  "infrastructure.cluster.x-k8s.io_azureclusters.yaml"
  "infrastructure.cluster.x-k8s.io_azureclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_azuremachinepoolmachines.yaml"
  "infrastructure.cluster.x-k8s.io_azuremachinepools.yaml"
  "infrastructure.cluster.x-k8s.io_azuremachines.yaml"
  "infrastructure.cluster.x-k8s.io_azuremachinetemplates.yaml"
  "infrastructure.cluster.x-k8s.io_azuremanagedclusters.yaml"
  "infrastructure.cluster.x-k8s.io_azuremanagedclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_azuremanagedcontrolplanes.yaml"
  "infrastructure.cluster.x-k8s.io_azuremanagedcontrolplanetemplates.yaml"
  "infrastructure.cluster.x-k8s.io_azuremanagedmachinepools.yaml"
  "infrastructure.cluster.x-k8s.io_azuremanagedmachinepooltemplates.yaml"
)

# renovate: datasource=github-tags depName=kubernetes-sigs/cluster-api-provider-azure
export VERSION=1.27.0

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/kubernetes-sigs/cluster-api-provider-azure/refs/tags/v${VERSION}/config/crd/bases/${crd_file}"
}
