# Elastic Stack

```bash
# reset password
kubectl -n default exec -it $(kubectl get pod -n default -l 'app=elasticsearch' -o jsonpath='{.items[0].metadata.name}') -- elasticsearch-reset-password -u elastic

# creates a service account token
kubectl -n default exec -it $(kubectl get pod -n default -l 'app=elasticsearch' -o jsonpath='{.items[0].metadata.name}') -- elasticsearch-service-tokens create elastic/kibana kibana-token
# patch secret
kubectl patch secrets kibana -p '{"data":{"ELASTICSEARCH_PASSWORD":"QUFFQUFXVnNZWE4wYVdNdmEybGlZVzVoTDJ0cFltRnVZUzEwYjJ0bGJqb3lTa1pqUm1SZmNGRlhUMFp5VFhwMWJtSnJabWgzCg=="}}'
```

## Refs

- [Install Elasticsearch with Docker](https://www.elastic.co/guide/en/elasticsearch/reference/8.1/docker.html)
- [elasticsearch-service-tokens](https://www.elastic.co/guide/en/elasticsearch/reference/8.0/service-tokens-command.html)
