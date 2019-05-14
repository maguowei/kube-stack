# Jaeger

## Deployment

```bash
$ kubectl create -f jaeger
$ kubectl expose service jaeger-query --port 16686 --type NodePort --name jaeger-query-node-port
```