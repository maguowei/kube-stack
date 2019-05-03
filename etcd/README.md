# etcd

```bash
# expose NodePort
kubectl expose service etcd  --port 2379 --type NodePort --name etcd-node-port
```