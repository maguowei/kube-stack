# Elastic Stack

```bash
# reset password
kubectl -n default exec -it $(kubectl get pod -n default -l 'app=elasticsearch' -o jsonpath='{.items[0].metadata.name}') -- elasticsearch-reset-password -u elastic
```


## Refs

- [Install Elasticsearch with Docker](https://www.elastic.co/guide/en/elasticsearch/reference/8.1/docker.html)