#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "bootstrap.cluster.x-k8s.io_eksconfigs.yaml"
  "bootstrap.cluster.x-k8s.io_eksconfigtemplates.yaml"
  "bootstrap.cluster.x-k8s.io_nodeadmconfigs.yaml"
  "bootstrap.cluster.x-k8s.io_nodeadmconfigtemplates.yaml"
  "controlplane.cluster.x-k8s.io_awsmanagedcontrolplanes.yaml"
  "controlplane.cluster.x-k8s.io_awsmanagedcontrolplanetemplates.yaml"
  "controlplane.cluster.x-k8s.io_rosacontrolplanes.yaml"
  "infrastructure.cluster.x-k8s.io_awsclustercontrolleridentities.yaml"
  "infrastructure.cluster.x-k8s.io_awsclusterroleidentities.yaml"
  "infrastructure.cluster.x-k8s.io_awsclusters.yaml"
  "infrastructure.cluster.x-k8s.io_awsclusterstaticidentities.yaml"
  "infrastructure.cluster.x-k8s.io_awsclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_awsfargateprofiles.yaml"
  "infrastructure.cluster.x-k8s.io_awsmachinepools.yaml"
  "infrastructure.cluster.x-k8s.io_awsmachines.yaml"
  "infrastructure.cluster.x-k8s.io_awsmachinetemplates.yaml"
  "infrastructure.cluster.x-k8s.io_awsmanagedclusters.yaml"
  "infrastructure.cluster.x-k8s.io_awsmanagedclustertemplates.yaml"
  "infrastructure.cluster.x-k8s.io_awsmanagedmachinepools.yaml"
  "infrastructure.cluster.x-k8s.io_rosaclusters.yaml"
  "infrastructure.cluster.x-k8s.io_rosamachinepools.yaml"
  "infrastructure.cluster.x-k8s.io_rosanetworks.yaml"
  "infrastructure.cluster.x-k8s.io_rosaocmroleconfigs.yaml"
  "infrastructure.cluster.x-k8s.io_rosaroleconfigs.yaml"
)

# renovate: datasource=github-tags depName=kubernetes-sigs/cluster-api-provider-aws
export VERSION=2.13.0

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/kubernetes-sigs/cluster-api-provider-aws/refs/tags/v${VERSION}/config/crd/bases/${crd_file}"
}
