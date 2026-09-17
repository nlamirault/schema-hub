#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "aigateway.envoyproxy.io_aigatewayroutes.yaml"
  "aigateway.envoyproxy.io_aiservicebackends.yaml"
  "aigateway.envoyproxy.io_backendsecuritypolicies.yaml"
  "aigateway.envoyproxy.io_gatewayconfigs.yaml"
  "aigateway.envoyproxy.io_mcproutes.yaml"
  "aigateway.envoyproxy.io_quotapolicies.yaml"
)

# renovate: datasource=github-tags depName=theagentrouter/agent-router
export VERSION=1.1.0

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/theagentrouter/agent-router/v${VERSION}/manifests/charts/ai-gateway-crds-helm/templates/${crd_file}"
}
