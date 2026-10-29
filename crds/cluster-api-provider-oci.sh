#!/usr/bin/env bash
# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "infrastructure.cluster.x-k8s.io_ociclusteridentities.yaml"
  "infrastructure.cluster.x-k8s.io_ociclusters.yaml"
  "infrastructure.cluster.x-k8s.io_ociclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_ocimachinepoolmachines.yaml"
  "infrastructure.cluster.x-k8s.io_ocimachinepools.yaml"
  "infrastructure.cluster.x-k8s.io_ocimachines.yaml"
  "infrastructure.cluster.x-k8s.io_ocimachinetemplates.yaml"
  "infrastructure.cluster.x-k8s.io_ocimanagedclusters.yaml"
  "infrastructure.cluster.x-k8s.io_ocimanagedclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_ocimanagedcontrolplanes.yaml"
  "infrastructure.cluster.x-k8s.io_ocimanagedcontrolplanetemplates.yaml"
  "infrastructure.cluster.x-k8s.io_ocimanagedmachinepools.yaml"
  "infrastructure.cluster.x-k8s.io_ocimanagedmachinepooltemplates.yaml"
  "infrastructure.cluster.x-k8s.io_ocivirtualmachinepools.yaml"
)

# renovate: datasource=github-tags depName=oracle/cluster-api-provider-oci
export VERSION=0.24.2

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/oracle/cluster-api-provider-oci/refs/tags/v${VERSION}/config/crd/bases/${crd_file}"
}
