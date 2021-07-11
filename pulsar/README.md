# Pulasr

```bash
$ kubectl apply -f pulsar
$ kubectl expose service pulsar --port 6650 --type NodePort --name pulsar-node-port

# pulsar-manager
$ kubectl port-forward service/pulsar-manager 7750 9527
$ CSRF_TOKEN=$(curl http://127.0.0.1:7750/pulsar-manager/csrf-token)
$ curl \
    -H "X-XSRF-TOKEN: $CSRF_TOKEN" \
    -H "Cookie: XSRF-TOKEN=$CSRF_TOKEN;" \
    -H 'Content-Type: application/json' \
    -X PUT http://127.0.0.1:7750/pulsar-manager/users/superuser \
    -d '{"name": "admin", "password": "apachepulsar", "description": "test", "email": "username@test.org"}'
```

access [pulsar-manager](http://localhost:9527/)
## Ref

- [Deploying Pulsar on Kubernetes](https://pulsar.apache.org/docs/en/deploy-kubernetes/)
- [pulsar-manager](https://github.com/apache/pulsar-manager)