# Kubernetes Stack

```text
.
├── LICENSE
├── Makefile
├── README.md
├── cassandra
│   ├── deployment.yaml
│   └── service.yaml
├── clickhouse
│   ├── deployment.yaml
│   └── service.yaml
├── elastic
│   ├── apm
│   │   ├── apm-deployment.yaml
│   │   ├── apm-ingress.yaml
│   │   └── apm-service.yaml
│   ├── elasticsearch
│   │   ├── elasticsearch-deployment.yaml
│   │   ├── elasticsearch-ingress.yaml
│   │   └── elasticsearch-service.yaml
│   └── kibana
│       ├── kibana-deployment.yaml
│       ├── kibana-ingress.yaml
│       └── kibana-service.yaml
├── etcd
│   ├── README.md
│   ├── deployment.yaml
│   └── service.yaml
├── grafana
│   ├── configmap.yaml
│   ├── deployment.yaml
│   ├── ingress.yaml
│   ├── secret.yaml
│   └── service.yaml
├── influxdb
│   ├── deployment.yaml
│   ├── ingress.yaml
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
│   ├── query-ingress.yaml
│   ├── query-service.yaml
│   ├── spark-dependencies
│   │   └── jaeger-spark-dependencies-cronjob.yaml
│   └── storage-configmap.yaml
├── kafka
│   ├── README.md
│   ├── kafka-deployment.yaml
│   ├── kafka-headless-service.yaml
│   ├── kafka-service.yaml
│   ├── zookeeper-deployment.yaml
│   └── zookeeper-service.yaml
├── loki
│   ├── deployment.yaml
│   ├── promtail
│   │   ├── configmap.yaml
│   │   └── daemonset.yaml
│   └── service.yaml
├── minio
│   ├── deployment.yaml
│   ├── ingress.yaml
│   ├── secret.yaml
│   └── service.yaml
├── mongo
│   ├── deployment.yaml
│   ├── mongo-express.yaml
│   ├── secret.yaml
│   └── service.yaml
├── mysql
│   ├── README.md
│   ├── configmap.yaml
│   ├── deployment.yaml
│   ├── mysqld-exporter.yaml
│   ├── secret.yaml
│   └── service.yaml
├── postgres
│   ├── deployment.yaml
│   ├── secret.yaml
│   └── service.yaml
├── prometheus
│   ├── README.md
│   ├── configmap.yaml
│   ├── deployment.yaml
│   ├── ingress.yaml
│   ├── node-exporter
│   │   └── node-exporter-daemonset.yaml
│   ├── rbac.yml
│   └── service.yaml
├── pulsar
│   ├── README.md
│   ├── deployment.yaml
│   └── service.yaml
└── redis
    ├── README.md
    ├── deployment.yaml
    ├── redis-exporter.yaml
    └── service.yaml
```
