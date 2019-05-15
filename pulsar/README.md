# Pulasr

```bash
$ kubectl create -f pulsar
$ kubectl expose service pulsar --port 6650 --type NodePort --name pulsar-node-port
```


## Ref

- [Deploying Pulsar on Kubernetes](https://pulsar.apache.org/docs/en/deploy-kubernetes/)
- https://github.com/apache/pulsar/tree/master/deployment/kubernetes/generic