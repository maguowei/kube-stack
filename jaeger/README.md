# Jaeger

## Deployment

```bash
$ kubectl create -f jaeger/elasticsearch
$ kubectl create -f jaeger
$ kubectl expose service jaeger-query --port 16686 --type NodePort --name jaeger-query-node-port

$ kubectl create -f jaeger/example
$ kubectl expose service jaeger-example-hotrod --port 8080 --type NodePort --name jaeger-example-hotrod-node-port
```

## TODO

- [Support Elasticsearch 7.x](https://github.com/jaegertracing/jaeger/issues/1474)
