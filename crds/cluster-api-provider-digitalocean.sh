#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "infrastructure.cluster.x-k8s.io_doclusters.yaml"
  "infrastructure.cluster.x-k8s.io_doclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_domachines.yaml"
  "infrastructure.cluster.x-k8s.io_domachinetemplates.yaml"
)

# renovate: datasource=github-tags depName=kubernetes-sigs/cluster-api-provider-digitalocean
export VERSION=1.6.0

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/kubernetes-sigs/cluster-api-provider-digitalocean/refs/tags/v${VERSION}/config/crd/bases/${crd_file}"
}
