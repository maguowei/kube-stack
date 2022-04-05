# Elastic Stack

```bash
# reset password
kubectl -n default exec -it $(kubectl get pod -n default -l 'app=elasticsearch' -o jsonpath='{.items[0].metadata.name}') -- elasticsearch-reset-password -u elastic

# creates a service account token
kubectl -n default exec -it $(kubectl get pod -n default -l 'app=elasticsearch' -o jsonpath='{.items[0].metadata.name}') -- elasticsearch-create-enrollment-token -s kibana
# patch secret
# kubectl patch secrets kibana -p '{"data":{"ELASTICSEARCH_PASSWORD":"R3YtRnEtN2daSGJqQUk4YWEyd0YK"}}'
```

## Refs

- [Install Elasticsearch with Docker](https://www.elastic.co/guide/en/elasticsearch/reference/8.1/docker.html)
- [elasticsearch-create-enrollment-token](https://www.elastic.co/guide/en/elasticsearch/reference/8.0/create-enrollment-token.html)
