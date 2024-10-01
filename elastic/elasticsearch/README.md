# Elasticsearch

```bash
kubectl create ingress elasticsearch --class=nginx --rule "elasticsearch.k8s.orb.local/*=elasticsearch:9200"
```

## 参考

- [Elasticsearch Docs: Install Elasticsearch with Docker](https://www.elastic.co/guide/en/elasticsearch/reference/8.3/docker.html)
