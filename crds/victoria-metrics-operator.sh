#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=bundle
export FILES=(
  "vlagents.operator.victoriametrics.com.yaml"
  "vlclusters.operator.victoriametrics.com.yaml"
  "vldistributed.operator.victoriametrics.com.yaml"
  "vlogs.operator.victoriametrics.com.yaml"
  "vlsingles.operator.victoriametrics.com.yaml"
  "vmagents.operator.victoriametrics.com.yaml"
  "vmalertmanagerconfigs.operator.victoriametrics.com.yaml"
  "vmalertmanagers.operator.victoriametrics.com.yaml"
  "vmalerts.operator.victoriametrics.com.yaml"
  "vmanomalies.operator.victoriametrics.com.yaml"
  "vmanomalyconfigs.operator.victoriametrics.com.yaml"
  "vmauths.operator.victoriametrics.com.yaml"
  "vmclusters.operator.victoriametrics.com.yaml"
  "vmdistributed.operator.victoriametrics.com.yaml"
  "vmnodescrapes.operator.victoriametrics.com.yaml"
  "vmpodscrapes.operator.victoriametrics.com.yaml"
  "vmprobes.operator.victoriametrics.com.yaml"
  "vmrules.operator.victoriametrics.com.yaml"
  "vmscrapeconfigs.operator.victoriametrics.com.yaml"
  "vmservicescrapes.operator.victoriametrics.com.yaml"
  "vmsingles.operator.victoriametrics.com.yaml"
  "vmstaticscrapes.operator.victoriametrics.com.yaml"
  "vmusers.operator.victoriametrics.com.yaml"
  "vtclusters.operator.victoriametrics.com.yaml"
  "vtsingles.operator.victoriametrics.com.yaml"
)

# renovate: datasource=github-tags depName=VictoriaMetrics/operator
export VERSION=0.74.1

function generate_url {
  echo "https://raw.githubusercontent.com/VictoriaMetrics/operator/v${VERSION}/config/crd/overlay/crd.yaml"
}
