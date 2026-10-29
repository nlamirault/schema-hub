#!/usr/bin/env bash
# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "gateway.kgateway.dev_backendconfigpolicies.yaml"
  "gateway.kgateway.dev_backends.yaml"
  "gateway.kgateway.dev_directresponses.yaml"
  "gateway.kgateway.dev_gatewayextensions.yaml"
  "gateway.kgateway.dev_gatewayparameters.yaml"
  "gateway.kgateway.dev_httplistenerpolicies.yaml"
  "gateway.kgateway.dev_trafficpolicies.yaml"
)

# renovate: datasource=github-tags depName=akuity/kargo
export VERSION=2.1.1

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/kgateway-dev/kgateway/refs/tags/v${VERSION}/install/helm/kgateway-crds/templates/${crd_file}"
}
