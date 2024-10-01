# Kubernetes Stack

```text
.
├── LICENSE
├── README.md
├── chrome
│   ├── README.md
│   ├── deployment.yaml
│   └── service.yaml
├── clickhouse
│   ├── deployment.yaml
│   ├── pvc.yaml
│   └── service.yaml
├── elastic
│   ├── README.md
│   ├── elasticsearch
│   │   ├── README.md
│   │   ├── deployment.yaml
│   │   ├── pvc.yaml
│   │   └── service.yaml
│   ├── filebeat
│   │   ├── README.md
│   │   ├── cinfigmap.yaml
│   │   ├── daemonset.yaml
│   │   └── pvc.yaml
│   └── kibana
│       ├── configmap.yaml
│       ├── deployment.yaml
│       ├── secret.yaml
│       └── service.yaml
├── etcd
│   ├── README.md
│   ├── deployment.yaml
│   └── service.yaml
├── grafana
│   ├── configmap.yaml
│   ├── deployment.yaml
│   ├── pvc.yaml
│   ├── secret.yaml
│   └── service.yaml
├── jaeger
│   ├── README.md
│   ├── agent-daemonset.yaml
│   ├── collector-deployment.yaml
│   ├── collector-service.yaml
│   ├── example
│   │   ├── hotrod-deployment.yaml
│   │   ├── hotrod-service.yaml
│   │   └── ingress.yaml
│   ├── query-deployment.yaml
│   ├── query-service.yaml
│   ├── spark-dependencies
│   │   └── jaeger-spark-dependencies-cronjob.yaml
│   └── storage-configmap.yaml
├── loki
│   ├── deployment.yaml
│   ├── promtail
│   │   ├── configmap.yaml
│   │   └── daemonset.yaml
│   └── service.yaml
├── minio
│   ├── deployment.yaml
│   ├── pvc.yaml
│   ├── secret.yaml
│   └── service.yaml
├── mitmporxy
│   ├── README.md
│   ├── mitmproxy.yaml
│   └── service.yaml
├── mysql
│   ├── README.md
│   ├── configmap.yaml
│   ├── deployment.yaml
│   ├── mysqld-exporter.yaml
│   ├── pvc.yaml
│   ├── secret.yaml
│   └── service.yaml
├── nats
│   ├── deployment.yaml
│   └── service.yaml
├── postgres
│   ├── deployment.yaml
│   ├── pvc.yaml
│   ├── secret.yaml
│   └── service.yaml
├── prometheus
│   ├── README.md
│   ├── configmap.yaml
│   ├── deployment.yaml
│   ├── node-exporter
│   │   └── node-exporter-daemonset.yaml
│   ├── pvc.yaml
│   ├── rbac.yml
│   └── service.yaml
├── pulsar
│   ├── README.md
│   ├── deployment.yaml
│   ├── pulsar-manager-deployment.yaml
│   ├── pvc.yaml
│   └── service.yaml
├── pyroscope
│   ├── README.md
│   ├── deployment.yaml
│   └── service.yaml
├── redis
│   ├── README.md
│   ├── deployment.yaml
│   ├── pvc.yaml
│   ├── redis-exporter.yaml
│   ├── redisinsight
│   │   ├── README.md
│   │   ├── deployment.yaml
│   │   └── service.yaml
│   └── service.yaml
└── superset
    ├── README.md
    ├── configmap.yaml
    ├── deployment.yaml
    ├── pvc.yaml
    └── service.yaml
```
