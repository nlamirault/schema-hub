# Supported schemas reference

All schemas are served from:

```
https://raw.githubusercontent.com/nlamirault/schema-hub/main/schemas/{api-group}/{kind}_{version}.json
```

All path components are lowercase.

The full, authoritative list of operators and the API groups they contribute lives in
[`sources.yaml`](../../sources.yaml) at the repository root. The table below is generated
from it.

---

<!-- BEGIN GENERATED: generate-schemas-reference.py -->

_117 operators and controllers, 1048 API groups. Generated from `sources.yaml` — do not edit this section by hand; run `make docs-schemas` after changing `sources.yaml`._

## AI Orchestration

| Application | Upstream | API groups |
| ------------ | -------- | ---------- |
| Agent Gateway | [agentgateway/agentgateway](https://github.com/agentgateway/agentgateway) | `agentgateway.dev` |
| Agent Router | [theagentrouter/agent-router](https://github.com/theagentrouter/agent-router) | `aigateway.envoyproxy.io` |
| Agent Sandbox | [kubernetes-sigs/agent-sandbox](https://github.com/kubernetes-sigs/agent-sandbox) | `agents.x-k8s.io`, `extensions.agents.x-k8s.io` |
| KAgent | [kagent-dev/kagent](https://github.com/kagent-dev/kagent) | `kagent.dev` |
| Kube Agentic Networking | [kubernetes-sigs/kube-agentic-networking](https://github.com/kubernetes-sigs/kube-agentic-networking) | `agentic.networking.x-k8s.io` |
| Sympozium | [sympozium-ai/sympozium](https://github.com/sympozium-ai/sympozium) | `sympozium.ai` |

---

## AWS Infrastructure

| Application | Upstream | API groups |
| ------------ | -------- | ---------- |
| ACK ACM | [aws-controllers-k8s/acm-controller](https://github.com/aws-controllers-k8s/acm-controller) | `acm.services.k8s.aws` |
| ACK ACM PCA | [aws-controllers-k8s/acmpca-controller](https://github.com/aws-controllers-k8s/acmpca-controller) | `acmpca.services.k8s.aws` |
| ACK API Gateway v2 | [aws-controllers-k8s/apigatewayv2-controller](https://github.com/aws-controllers-k8s/apigatewayv2-controller) | `apigatewayv2.services.k8s.aws` |
| ACK Application AutoScaling | [aws-controllers-k8s/applicationautoscaling-controller](https://github.com/aws-controllers-k8s/applicationautoscaling-controller) | `applicationautoscaling.services.k8s.aws` |
| ACK Bedrock Agent | [aws-controllers-k8s/bedrockagent-controller](https://github.com/aws-controllers-k8s/bedrockagent-controller) | `bedrockagent.services.k8s.aws` |
| ACK CloudFront | [aws-controllers-k8s/cloudfront-controller](https://github.com/aws-controllers-k8s/cloudfront-controller) | `cloudfront.services.k8s.aws` |
| ACK CloudTrail | [aws-controllers-k8s/cloudtrail-controller](https://github.com/aws-controllers-k8s/cloudtrail-controller) | `cloudtrail.services.k8s.aws` |
| ACK CloudWatch | [aws-controllers-k8s/cloudwatch-controller](https://github.com/aws-controllers-k8s/cloudwatch-controller) | `cloudwatch.services.k8s.aws` |
| ACK CloudWatch Logs | [aws-controllers-k8s/cloudwatchlogs-controller](https://github.com/aws-controllers-k8s/cloudwatchlogs-controller) | `cloudwatchlogs.services.k8s.aws` |
| ACK Core | [aws-controllers-k8s/runtime](https://github.com/aws-controllers-k8s/runtime) | `services.k8s.aws` |
| ACK DynamoDB | [aws-controllers-k8s/dynamodb-controller](https://github.com/aws-controllers-k8s/dynamodb-controller) | `dynamodb.services.k8s.aws` |
| ACK EC2 | [aws-controllers-k8s/ec2-controller](https://github.com/aws-controllers-k8s/ec2-controller) | `ec2.services.k8s.aws` |
| ACK ECR | [aws-controllers-k8s/ecr-controller](https://github.com/aws-controllers-k8s/ecr-controller) | `ecr.services.k8s.aws` |
| ACK ECS | [aws-controllers-k8s/ecs-controller](https://github.com/aws-controllers-k8s/ecs-controller) | `ecs.services.k8s.aws` |
| ACK EKS | [aws-controllers-k8s/eks-controller](https://github.com/aws-controllers-k8s/eks-controller) | `eks.services.k8s.aws` |
| ACK ElastiCache | [aws-controllers-k8s/elasticache-controller](https://github.com/aws-controllers-k8s/elasticache-controller) | `elasticache.services.k8s.aws` |
| ACK EMR Containers | [aws-controllers-k8s/emrcontainers-controller](https://github.com/aws-controllers-k8s/emrcontainers-controller) | `emrcontainers.services.k8s.aws` |
| ACK EventBridge | [aws-controllers-k8s/eventbridge-controller](https://github.com/aws-controllers-k8s/eventbridge-controller) | `eventbridge.services.k8s.aws` |
| ACK IAM | [aws-controllers-k8s/iam-controller](https://github.com/aws-controllers-k8s/iam-controller) | `iam.services.k8s.aws` |
| ACK Kafka | [aws-controllers-k8s/kafka-controller](https://github.com/aws-controllers-k8s/kafka-controller) | `kafka.services.k8s.aws` |
| ACK Kinesis | [aws-controllers-k8s/kinesis-controller](https://github.com/aws-controllers-k8s/kinesis-controller) | `kinesis.services.k8s.aws` |
| ACK KMS | [aws-controllers-k8s/kms-controller](https://github.com/aws-controllers-k8s/kms-controller) | `kms.services.k8s.aws` |
| ACK Lambda | [aws-controllers-k8s/lambda-controller](https://github.com/aws-controllers-k8s/lambda-controller) | `lambda.services.k8s.aws` |
| ACK MemoryDB | [aws-controllers-k8s/memorydb-controller](https://github.com/aws-controllers-k8s/memorydb-controller) | `memorydb.services.k8s.aws` |
| ACK MQ | [aws-controllers-k8s/mq-controller](https://github.com/aws-controllers-k8s/mq-controller) | `mq.services.k8s.aws` |
| ACK Network Firewall | [aws-controllers-k8s/networkfirewall-controller](https://github.com/aws-controllers-k8s/networkfirewall-controller) | `networkfirewall.services.k8s.aws` |
| ACK OpenSearch Service | [aws-controllers-k8s/opensearchservice-controller](https://github.com/aws-controllers-k8s/opensearchservice-controller) | `opensearchservice.services.k8s.aws` |
| ACK Organizations | [aws-controllers-k8s/organizations-controller](https://github.com/aws-controllers-k8s/organizations-controller) | `organizations.services.k8s.aws` |
| ACK Pipes | [aws-controllers-k8s/pipes-controller](https://github.com/aws-controllers-k8s/pipes-controller) | `pipes.services.k8s.aws` |
| ACK Prometheus Service | [aws-controllers-k8s/prometheusservice-controller](https://github.com/aws-controllers-k8s/prometheusservice-controller) | `prometheusservice.services.k8s.aws` |
| ACK RAM | [aws-controllers-k8s/ram-controller](https://github.com/aws-controllers-k8s/ram-controller) | `ram.services.k8s.aws` |
| ACK RDS | [aws-controllers-k8s/rds-controller](https://github.com/aws-controllers-k8s/rds-controller) | `rds.services.k8s.aws` |
| ACK Route53 | [aws-controllers-k8s/route53-controller](https://github.com/aws-controllers-k8s/route53-controller) | `route53.services.k8s.aws` |
| ACK S3 | [aws-controllers-k8s/s3-controller](https://github.com/aws-controllers-k8s/s3-controller) | `s3.services.k8s.aws` |
| ACK SageMaker | [aws-controllers-k8s/sagemaker-controller](https://github.com/aws-controllers-k8s/sagemaker-controller) | `sagemaker.services.k8s.aws` |
| ACK Secrets Manager | [aws-controllers-k8s/secretsmanager-controller](https://github.com/aws-controllers-k8s/secretsmanager-controller) | `secretsmanager.services.k8s.aws` |
| ACK SNS | [aws-controllers-k8s/sns-controller](https://github.com/aws-controllers-k8s/sns-controller) | `sns.services.k8s.aws` |
| ACK SQS | [aws-controllers-k8s/sqs-controller](https://github.com/aws-controllers-k8s/sqs-controller) | `sqs.services.k8s.aws` |
| ACK Step Functions | [aws-controllers-k8s/sfn-controller](https://github.com/aws-controllers-k8s/sfn-controller) | `sfn.services.k8s.aws` |
| Crossplane Provider Upjet AWS | [crossplane-contrib/provider-upjet-aws](https://github.com/crossplane-contrib/provider-upjet-aws) | 362 API groups — see `sources.yaml` (`crossplane-aws`) |

---

## Azure Ecosystem

| Application | Upstream | API groups |
| ------------ | -------- | ---------- |
| Azure Service Operator | [Azure/azure-service-operator](https://github.com/Azure/azure-service-operator) | 34 API groups — see `sources.yaml` (`azure-service-operator`) |
| Azure Service Operator (Extended) | [Azure/azure-service-operator](https://github.com/Azure/azure-service-operator) | 13 API groups — see `sources.yaml` (`azure-service-operator-extra`) |
| Crossplane Provider Upjet Azure | [crossplane-contrib/provider-upjet-azure](https://github.com/crossplane-contrib/provider-upjet-azure) | 184 API groups — see `sources.yaml` (`crossplane-azure`) |

---

## Databases & Storage

| Application | Upstream | API groups |
| ------------ | -------- | ---------- |
| ClickHouse Keeper (Altinity) | [Altinity/clickhouse-operator](https://github.com/Altinity/clickhouse-operator) | `clickhouse-keeper.altinity.com` |
| ClickHouse Operator | [Altinity/clickhouse-operator](https://github.com/Altinity/clickhouse-operator) | `clickhouse.altinity.com` |
| CloudNativePG | [cloudnative-pg/cloudnative-pg](https://github.com/cloudnative-pg/cloudnative-pg) | `postgresql.cnpg.io` |
| Dragonfly Operator | [dragonflydb/dragonfly-operator](https://github.com/dragonflydb/dragonfly-operator) | `dragonflydb.io` |
| MariaDB Operator | [mariadb-operator/mariadb-operator](https://github.com/mariadb-operator/mariadb-operator) | `k8s.mariadb.com` |
| MOCO (MySQL Operator) | [cybozu-go/moco](https://github.com/cybozu-go/moco) | `moco.cybozu.com` |

---

## GitOps & Deployment

| Application | Upstream | API groups |
| ------------ | -------- | ---------- |
| Argo CD | [argoproj/argo-cd](https://github.com/argoproj/argo-cd) | `argoproj.io` |
| Argo Events | [argoproj/argo-events](https://github.com/argoproj/argo-events) | `argoproj.io` |
| Argo Rollouts | [argoproj/argo-rollouts](https://github.com/argoproj/argo-rollouts) | `argoproj.io` |
| Argo Workflows | [argoproj/argo-workflows](https://github.com/argoproj/argo-workflows) | `argoproj.io` |
| Flux | [fluxcd/flux2](https://github.com/fluxcd/flux2) | 6 API groups — see `sources.yaml` (`flux`) |
| Kargo | [akuity/kargo](https://github.com/akuity/kargo) | `kargo.akuity.io` |

---

## Google Cloud

| Application | Upstream | API groups |
| ------------ | -------- | ---------- |
| Config Connector | [GoogleCloudPlatform/k8s-config-connector](https://github.com/GoogleCloudPlatform/k8s-config-connector) | 92 API groups — see `sources.yaml` (`k8s-config-connector`) |
| Config Connector (Extended) | [GoogleCloudPlatform/k8s-config-connector](https://github.com/GoogleCloudPlatform/k8s-config-connector) | 36 API groups — see `sources.yaml` (`k8s-config-connector-extra`) |
| Crossplane Provider Upjet GCP | [crossplane-contrib/provider-upjet-gcp](https://github.com/crossplane-contrib/provider-upjet-gcp) | 164 API groups — see `sources.yaml` (`crossplane-gcp`) |

---

## Kubernetes

| Application | Upstream | API groups |
| ------------ | -------- | ---------- |
| Cluster API | [kubernetes-sigs/cluster-api](https://github.com/kubernetes-sigs/cluster-api) | 7 API groups — see `sources.yaml` (`cluster-api`) |
| Cluster API (Extended) | [kubernetes-sigs/cluster-api](https://github.com/kubernetes-sigs/cluster-api) | `clusterctl.cluster.x-k8s.io` |
| Cluster API Operator | [kubernetes-sigs/cluster-api-operator](https://github.com/kubernetes-sigs/cluster-api-operator) | `operator.cluster.x-k8s.io` |
| Cluster API Provider AWS | [kubernetes-sigs/cluster-api-provider-aws](https://github.com/kubernetes-sigs/cluster-api-provider-aws) | `bootstrap.cluster.x-k8s.io`, `controlplane.cluster.x-k8s.io`, `infrastructure.cluster.x-k8s.io` |
| Cluster API Provider Azure | [kubernetes-sigs/cluster-api-provider-azure](https://github.com/kubernetes-sigs/cluster-api-provider-azure) | `infrastructure.cluster.x-k8s.io` |
| Cluster API Provider DigitalOcean | [kubernetes-sigs/cluster-api-provider-digitalocean](https://github.com/kubernetes-sigs/cluster-api-provider-digitalocean) | `infrastructure.cluster.x-k8s.io` |
| Cluster API Provider GCP | [kubernetes-sigs/cluster-api-provider-gcp](https://github.com/kubernetes-sigs/cluster-api-provider-gcp) | `bootstrap.cluster.x-k8s.io`, `infrastructure.cluster.x-k8s.io` |
| Cluster API Provider Hetzner | [syself/cluster-api-provider-hetzner](https://github.com/syself/cluster-api-provider-hetzner) | `infrastructure.cluster.x-k8s.io` |
| Cluster API Provider OpenStack | [kubernetes-sigs/cluster-api-provider-openstack](https://github.com/kubernetes-sigs/cluster-api-provider-openstack) | `infrastructure.cluster.x-k8s.io` |
| Cluster API Provider vCluster | [loft-sh/cluster-api-provider-vcluster](https://github.com/loft-sh/cluster-api-provider-vcluster) | `infrastructure.cluster.x-k8s.io` |
| Cluster API Provider Vultr | [vultr/cluster-api-provider-vultr](https://github.com/vultr/cluster-api-provider-vultr) | `infrastructure.cluster.x-k8s.io` |
| Crossplane | [crossplane/crossplane](https://github.com/crossplane/crossplane) | 4 API groups — see `sources.yaml` (`crossplane`) |
| Karpenter | [kubernetes-sigs/karpenter](https://github.com/kubernetes-sigs/karpenter) | `karpenter.sh` |
| Karpenter (AWS) | [aws/karpenter-provider-aws](https://github.com/aws/karpenter-provider-aws) | `karpenter.k8s.aws` |
| Karpenter (Azure) | [Azure/karpenter-provider-azure](https://github.com/Azure/karpenter-provider-azure) | `karpenter.azure.com` |
| Karpenter (Clever Cloud) | [CleverCloud/karpenter-provider-clever-cloud](https://github.com/CleverCloud/karpenter-provider-clever-cloud) | `karpenter.clever-cloud.com` |
| Karpenter (Exoscale) | [exoscale/karpenter-provider-exoscale](https://github.com/exoscale/karpenter-provider-exoscale) | `karpenter.exoscale.com` |
| Karpenter (IBM Cloud) | [kubernetes-sigs/karpenter-provider-ibm-cloud](https://github.com/kubernetes-sigs/karpenter-provider-ibm-cloud) | `karpenter-ibm.sh` |
| Karpenter (OCI Core) | [oracle/karpenter-provider-oci](https://github.com/oracle/karpenter-provider-oci) | `oci.oraclecloud.com` |
| Karpenter (OCI) | [oracle/karpenter-provider-oci](https://github.com/oracle/karpenter-provider-oci) | `karpenter.oci.oracle.com` |
| KEDA | [kedacore/keda](https://github.com/kedacore/keda) | `keda.sh` |
| KEDA (Extended) | [kedacore/keda](https://github.com/kedacore/keda) | `eventing.keda.sh` |
| Kubernetes | [kubernetes/kubernetes](https://github.com/kubernetes/kubernetes) | 27 API groups — see `sources.yaml` (`kubernetes`) |
| Kubernetes (Extended) | [kubernetes/kubernetes](https://github.com/kubernetes/kubernetes) | `meta.api.k8s.io`, `pkg.api.k8s.io` |
| Kueue | [kubernetes-sigs/kueue](https://github.com/kubernetes-sigs/kueue) | `kueue.x-k8s.io` |
| Vertical Pod Autoscaler | [kubernetes/autoscaler](https://github.com/kubernetes/autoscaler) | `autoscaling.k8s.io` |

---

## Networking & Mesh

| Application | Upstream | API groups |
| ------------ | -------- | ---------- |
| Cilium | [cilium/cilium](https://github.com/cilium/cilium) | `cilium.io` |
| Envoy Gateway | [envoyproxy/gateway](https://github.com/envoyproxy/gateway) | `gateway.envoyproxy.io` |
| Gateway API | [kubernetes-sigs/gateway-api](https://github.com/kubernetes-sigs/gateway-api) | `gateway.networking.k8s.io` |
| Gateway API (Experimental x-k8s.io) | [kubernetes-sigs/gateway-api](https://github.com/kubernetes-sigs/gateway-api) | `gateway.networking.x-k8s.io` |
| Gateway API (Experimental) | [kubernetes-sigs/gateway-api](https://github.com/kubernetes-sigs/gateway-api) | `gateway.networking.k8s.io` |
| Istio | [istio/istio](https://github.com/istio/istio) | 4 API groups — see `sources.yaml` (`istio`) |
| kGateway | [kgateway-dev/kgateway](https://github.com/kgateway-dev/kgateway) | `gateway.kgateway.dev` |
| Traefik | [traefik/traefik](https://github.com/traefik/traefik) | `traefik.io` |

---

## Observability

| Application | Upstream | API groups |
| ------------ | -------- | ---------- |
| Grafana Operator | [grafana/grafana-operator](https://github.com/grafana/grafana-operator) | `grafana.integreatly.org` |
| OpenTelemetry Operator | [open-telemetry/opentelemetry-operator](https://github.com/open-telemetry/opentelemetry-operator) | `opentelemetry.io` |
| Prometheus Operator | [prometheus-operator/prometheus-operator](https://github.com/prometheus-operator/prometheus-operator) | `monitoring.coreos.com` |
| VictoriaMetrics Operator | [VictoriaMetrics/operator](https://github.com/VictoriaMetrics/operator) | `operator.victoriametrics.com` |

---

## Other Extensions

| Application | Upstream | API groups |
| ------------ | -------- | ---------- |
| Open Reports | [openreports/reports-api](https://github.com/openreports/reports-api) | `wgpolicyk8s.io` |
| Open Reports (io) | [openreports/reports-api](https://github.com/openreports/reports-api) | `openreports.io` |
| OpenFeature Operator | [open-feature/open-feature-operator](https://github.com/open-feature/open-feature-operator) | `core.openfeature.dev` |
| OpenStack Resource Controller | [k-orc/openstack-resource-controller](https://github.com/k-orc/openstack-resource-controller) | 4 API groups — see `sources.yaml` (`k-orc`) |
| OpenStack Resource Controller (openstack) | [k-orc/openstack-resource-controller](https://github.com/k-orc/openstack-resource-controller) | `openstack.k-orc.cloud` |
| Tuppr | [home-operations/tuppr](https://github.com/home-operations/tuppr) | `tuppr.home-operations.com` |

---

## Security

| Application | Upstream | API groups |
| ------------ | -------- | ---------- |
| 1Password Operator | [1Password/onepassword-operator](https://github.com/1Password/onepassword-operator) | `onepassword.com` |
| Cert Manager | [cert-manager/cert-manager](https://github.com/cert-manager/cert-manager) | `acme.cert-manager.io`, `cert-manager.io` |
| Doppler Operator | [DopplerHQ/kubernetes-operator](https://github.com/DopplerHQ/kubernetes-operator) | `secrets.doppler.com` |
| External Secrets Operator | [external-secrets/external-secrets](https://github.com/external-secrets/external-secrets) | `external-secrets.io`, `generators.external-secrets.io` |
| Infisical Operator | [Infisical/kubernetes-operator](https://github.com/Infisical/kubernetes-operator) | `secrets.infisical.com` |
| Secrets Store CSI Driver | [kubernetes-sigs/secrets-store-csi-driver](https://github.com/kubernetes-sigs/secrets-store-csi-driver) | `secrets-store.csi.x-k8s.io` |
| Security Profiles Operator | [kubernetes-sigs/security-profiles-operator](https://github.com/kubernetes-sigs/security-profiles-operator) | `security-profiles-operator.x-k8s.io` |
| Sigstore Policy Controller | [sigstore/policy-controller](https://github.com/sigstore/policy-controller) | `policy.sigstore.dev` |
| Vault Secrets Operator | [hashicorp/vault-secrets-operator](https://github.com/hashicorp/vault-secrets-operator) | `secrets.hashicorp.com` |

---

<!-- END GENERATED: generate-schemas-reference.py -->

## Schema naming convention

```
schemas/{api-group}/{kind}_{version}.json
```

Examples:

| Resource                    | Schema path                                                  |
| ---------------------------- | ------------------------------------------------------------ |
| ArgoCD Application v1alpha1  | `schemas/argoproj.io/application_v1alpha1.json`               |
| External Secret v1beta1      | `schemas/external-secrets.io/externalsecret_v1beta1.json`     |
| Prometheus v1                | `schemas/monitoring.coreos.com/prometheus_v1.json`            |
| Flux Kustomization v1        | `schemas/kustomize.toolkit.fluxcd.io/kustomization_v1.json`   |
| CNPG Cluster v1              | `schemas/postgresql.cnpg.io/cluster_v1.json`                  |
| KEDA ScaledObject v1alpha1   | `schemas/keda.sh/scaledobject_v1alpha1.json`                  |

All `kind` and `version` values are normalized to lowercase.
