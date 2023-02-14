# nestjs

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

NestJS chart for Trips backend

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| ZeljkoBenovic | <zeljko@zeljkobenovic.com> | <https://github.com/ZeljkoBenovic> |

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | 12.1.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity |
| autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80,"targetMemoryUtilizationPercentage":80}` | Autoscaling |
| autoscaling.enabled | bool | `false` | Enable autoscaling |
| autoscaling.maxReplicas | int | `100` | Maximum replicas |
| autoscaling.minReplicas | int | `1` | Minimum replicas |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | CPU utilisation which will trigger autoscailing |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` | RAM utilisation which will trigger autoscailing |
| backend | object | `{"blockchain":{"jsonRpc":"","mtciHoldingWalletAddress":"","mtciSCAddress":"","operatorPrivateKey":"","stableCoinWalletPrivateKey":"","tusdSCAddress":""},"config":{"name":"nestjs-backend","nodeEnv":"local","xray":{"enabled":false}},"livenessProbe":{"failureThreshold":3,"initialDelaySeconds":10,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":1},"localDatabase":{"enabled":false},"readinessProbe":{"failureThreshold":3,"initialDelaySeconds":10,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":1},"remoteDatabase":{"host":null,"name":null,"password":null,"port":null,"username":null}}` | Backend application config |
| backend.blockchain | object | `{"jsonRpc":"","mtciHoldingWalletAddress":"","mtciSCAddress":"","operatorPrivateKey":"","stableCoinWalletPrivateKey":"","tusdSCAddress":""}` | Blockchain related settings |
| backend.blockchain.jsonRpc | string | `""` | JSONRpc API endpoint |
| backend.blockchain.mtciHoldingWalletAddress | string | `""` | MTCI holding wallet address |
| backend.blockchain.mtciSCAddress | string | `""` | MTCI SmartContract address |
| backend.blockchain.operatorPrivateKey | string | `""` | Operator private key |
| backend.blockchain.stableCoinWalletPrivateKey | string | `""` | Stable coin wallet private key |
| backend.blockchain.tusdSCAddress | string | `""` | TUSD SmartContract address |
| backend.config.name | string | `"nestjs-backend"` | Application name |
| backend.config.nodeEnv | string | `"local"` | NodeJS environment |
| backend.config.xray | object | `{"enabled":false}` | XRay |
| backend.config.xray.enabled | bool | `false` | Enable XRay |
| backend.livenessProbe | object | `{"failureThreshold":3,"initialDelaySeconds":10,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":1}` | Liveness probe |
| backend.livenessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| backend.livenessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| backend.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| backend.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| backend.livenessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| backend.localDatabase.enabled | bool | `false` | Enable local postgresql database |
| backend.readinessProbe | object | `{"failureThreshold":3,"initialDelaySeconds":10,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":1}` | Readiness probe |
| backend.readinessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| backend.readinessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| backend.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| backend.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| backend.readinessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| backend.remoteDatabase | object | `{"host":null,"name":null,"password":null,"port":null,"username":null}` | Remote database settings |
| backend.remoteDatabase.host | string | `nil` | db host |
| backend.remoteDatabase.name | string | `nil` | db name |
| backend.remoteDatabase.password | string | `nil` | db password |
| backend.remoteDatabase.port | string | `nil` | db port |
| backend.remoteDatabase.username | string | `nil` | db username |
| fullnameOverride | string | `""` | Override for the full resource. (`"nestjs.fullname"`) |
| global.image.pullPolicy | string | `"IfNotPresent"` | Container pull policy |
| global.image.repository | string | `"backend"` | Container image repository |
| global.image.tag | string | `""` | Container image tag. The default is the chart appVersion. |
| global.imagePullSecrets | list | `[]` | Override for the full resource. (`"polygon-edge.fullname"`) |
| global.podAnnotations | object | `{}` | Additional pod annotations |
| global.podSecurityContext | object | `{}` | Additional pod security context |
| global.postgresql | object | `{"auth":{"database":"backend","password":"backend","username":"backend"},"service":{"ports":{"postgresql":5432}}}` | PostgreSQL subchart |
| global.postgresql.auth.database | string | `"backend"` | PostgreSQL database name |
| global.postgresql.auth.password | string | `"backend"` | PostgreSQL password |
| global.postgresql.auth.username | string | `"backend"` | PostgreSQL username |
| global.securityContext | object | `{}` | Security context |
| ingress.annotations | object | `{}` | Ingress annotations (`kubernetes.io/ingress.class: nginx`, `kubernetes.io/tls-acme: "true"`) |
| ingress.className | string | `"alb"` | Specify ingress class name |
| ingress.enabled | bool | `false` | Enable ingress |
| ingress.hosts[0] | object | `{"host":"nestjs-example.local","paths":[{"path":"/","pathType":"Prefix"}]}` | Fully qualified domain name |
| ingress.hosts[0].paths[0] | object | `{"path":"/","pathType":"Prefix"}` | Root path |
| ingress.hosts[0].paths[0].pathType | string | `"Prefix"` | Path prefix type |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` | Override for resource names  |
| nodeSelector | object | `{}` | Node selector |
| postgresql | object | `{"nameOverride":"nestjs-backend","persistence":{"size":"10Gi"}}` | PostgresSQL subchart settings |
| postgresql.nameOverride | string | `"nestjs-backend"` | Database name override |
| postgresql.persistence.size | string | `"10Gi"` | Permanent volume size |
| replicaCount | int | `1` | The number of pod replicas |
| resources | object | `{}` | Pod resources |
| service.namedPort | string | `"backend"` | Service port name |
| service.port | int | `3030` | Service port |
| service.type | string | `"ClusterIP"` | Service type |
| serviceAccount | object | `{"annotations":{},"create":true,"name":""}` | Service account |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` | Tolerations |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
