# Redis

```bash
# label for nodeSelector
kubectl get nodes
kubectl label nodes <node-name> node_store_type=mysql

# remove label
kubectl label nodes <node-name> node_store_type-
```
