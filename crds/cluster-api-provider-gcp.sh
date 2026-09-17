#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "bootstrap.cluster.x-k8s.io_gkeconfigs.yaml"
  "bootstrap.cluster.x-k8s.io_gkeconfigtemplates.yaml"
  "infrastructure.cluster.x-k8s.io_gcpclusters.yaml"
  "infrastructure.cluster.x-k8s.io_gcpclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_gcpmachinepools.yaml"
  "infrastructure.cluster.x-k8s.io_gcpmachines.yaml"
  "infrastructure.cluster.x-k8s.io_gcpmachinetemplates.yaml"
  "infrastructure.cluster.x-k8s.io_gcpmanagedclusters.yaml"
  "infrastructure.cluster.x-k8s.io_gcpmanagedclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_gcpmanagedcontrolplanes.yaml"
  "infrastructure.cluster.x-k8s.io_gcpmanagedcontrolplanetemplates.yaml"
  "infrastructure.cluster.x-k8s.io_gcpmanagedmachinepools.yaml"
  "infrastructure.cluster.x-k8s.io_gcpmanagedmachinepooltemplates.yaml"
)

# renovate: datasource=github-tags depName=kubernetes-sigs/cluster-api-provider-gcp
export VERSION=1.13.1

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/kubernetes-sigs/cluster-api-provider-gcp/refs/tags/v${VERSION}/config/crd/bases/${crd_file}"
}
