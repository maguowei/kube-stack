# Redis

```bash
# label for nodeSelector
kubectl get nodes
kubectl label nodes <node-name> node_store_type=redis

# remove label
kubectl label nodes <node-name> node_store_type-
```

## Ref

- [deploy the redis_exporter as a sidecar to a Redis instance](https://github.com/oliver006/redis_exporter/blob/master/contrib/k8s-redis-and-exporter-deployment.yaml)
- [redis_exporter](https://github.com/oliver006/redis_exporter)
- [Redis Dashboard for Prometheus Redis Exporter 1.x](https://grafana.com/grafana/dashboards/763)
