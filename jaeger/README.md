# Jaeger

## Deployment

```bash
$ kubectl create -f elastic
$ kubectl create -f jaeger
$ kubectl expose service jaeger-query --port 16686 --type NodePort --name jaeger-query-node-port

# Run HotROD example
$ kubectl create -f jaeger/example
$ kubectl expose service jaeger-example-hotrod --port 8080 --type NodePort --name jaeger-example-hotrod-node-port

# Service Dependencies CronJob
$ kubectl create -f jaeger/spark-dependencies

# run the job only once
$ kubectl run -it --rm jaeger-spark-dependencies --env=STORAGE=elasticsearch --env ES_NODES=http://elasticsearch:9200 --env ES_NODES_WAN_ONLY=true --restart=Never --image=jaegertracing/spark-dependencies
```

## clean

```bash
$ kubectl delete -f jaeger/spark-dependencies
$ kubectl delete -f jaeger/example
$ kubectl delete -f jaeger
```
