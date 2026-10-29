#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "infrastructure.cluster.x-k8s.io_ibmpowervsclusters.yaml"
  "infrastructure.cluster.x-k8s.io_ibmpowervsclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_ibmpowervsimages.yaml"
  "infrastructure.cluster.x-k8s.io_ibmpowervsmachines.yaml"
  "infrastructure.cluster.x-k8s.io_ibmpowervsmachinetemplates.yaml"
  "infrastructure.cluster.x-k8s.io_ibmvpcclusters.yaml"
  "infrastructure.cluster.x-k8s.io_ibmvpcclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_ibmvpcmachines.yaml"
  "infrastructure.cluster.x-k8s.io_ibmvpcmachinetemplates.yaml"
)

# renovate: datasource=github-tags depName=kubernetes-sigs/cluster-api-provider-ibmcloud
export VERSION=0.15.2

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/kubernetes-sigs/cluster-api-provider-ibmcloud/refs/tags/v${VERSION}/config/crd/bases/${crd_file}"
}
