#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "infrastructure.cluster.x-k8s.io_openstackclusteridentities.yaml"
  "infrastructure.cluster.x-k8s.io_openstackclusters.yaml"
  "infrastructure.cluster.x-k8s.io_openstackclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_openstackfloatingippools.yaml"
  "infrastructure.cluster.x-k8s.io_openstackmachines.yaml"
  "infrastructure.cluster.x-k8s.io_openstackmachinetemplates.yaml"
  "infrastructure.cluster.x-k8s.io_openstackservers.yaml"
)

# renovate: datasource=github-tags depName=kubernetes-sigs/cluster-api-provider-openstack
export VERSION=0.15.1

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/kubernetes-sigs/cluster-api-provider-openstack/refs/tags/v${VERSION}/config/crd/bases/${crd_file}"
}
