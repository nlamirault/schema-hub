#!/usr/bin/env bash
# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "apparmorprofile.yaml"
  "profilebinding.yaml"
  "profilerecording.yaml"
  "seccompprofile.yaml"
  "securityprofilenodestatus.yaml"
  "securityprofilesoperatordaemon.yaml"
  "selinuxpolicy.yaml"
)

# renovate: datasource=github-tags depName=kubernetes-sigs/security-profiles-operator
export VERSION=1.1.2

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/kubernetes-sigs/security-profiles-operator/v${VERSION}/deploy/base-crds/crds/${crd_file}"
}
