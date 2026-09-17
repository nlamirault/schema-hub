#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "agents.x-k8s.io_sandboxes.yaml"
  "extensions.agents.x-k8s.io_sandboxclaims.yaml"
  "extensions.agents.x-k8s.io_sandboxtemplates.yaml"
  "extensions.agents.x-k8s.io_sandboxwarmpools.yaml"
)

# renovate: datasource=github-tags depName=kubernetes-sigs/agent-sandbox
export VERSION=1.0.2

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/kubernetes-sigs/agent-sandbox/v${VERSION}/k8s/crds/${crd_file}"
}
