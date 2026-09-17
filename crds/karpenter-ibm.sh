#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "karpenter-ibm.sh_ibmnodeclasses.yaml"
)

# renovate: datasource=github-tags depName=kubernetes-sigs/karpenter-provider-ibm-cloud
export VERSION=1.0.5

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/kubernetes-sigs/karpenter-provider-ibm-cloud/v${VERSION}/config/components/crds/${crd_file}"
}
