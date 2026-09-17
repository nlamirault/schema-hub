#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
# SPDX-License-Identifier: Apache-2.0

export choice=individual
export FILES=(
  "kueue.x-k8s.io_admissionchecks.yaml"
  "kueue.x-k8s.io_clusterqueues.yaml"
  "kueue.x-k8s.io_cohorts.yaml"
  "kueue.x-k8s.io_localqueues.yaml"
  "kueue.x-k8s.io_multikueueclusters.yaml"
  "kueue.x-k8s.io_multikueueconfigs.yaml"
  "kueue.x-k8s.io_provisioningrequestconfigs.yaml"
  "kueue.x-k8s.io_resourceflavors.yaml"
  "kueue.x-k8s.io_topologies.yaml"
  "kueue.x-k8s.io_workloadpriorityclasses.yaml"
  "kueue.x-k8s.io_workloads.yaml"
)

# renovate: datasource=github-tags depName=kubernetes-sigs/kueue
export VERSION=0.19.5

function generate_url {
  local crd_file=$1
  echo "https://raw.githubusercontent.com/kubernetes-sigs/kueue/v${VERSION}/config/components/crd/bases/${crd_file}"
}
