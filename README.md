# Elastic APM

## compose

```bash
make up
```

## kubectl

```bash
# replace  http://elasticsearch:9200

kubectl run kibana --image=docker.elastic.co/kibana/kibana:6.4.0 --env="ELASTICSEARCH_URL=http://elasticsearch:9200"
kubectl expose deployment kibana --port=5601 --type NodePort

kubectl run apm --image=docker.elastic.co/apm/apm-server:6.4.0 -- -e -E output.elasticsearch.hosts=http://elasticsearch:9200
kubectl expose deployment apm --port=8200 --type NodePort
```

## kubernetes yaml

```bash
kubectl create -f https://raw.githubusercontent.com/maguowei/elastic-apm/master/kubernetes/apm-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/maguowei/elastic-apm/master/kubernetes/apm-service.yaml
kubectl create -f https://raw.githubusercontent.com/maguowei/elastic-apm/master/kubernetes/kibana-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/maguowei/elastic-apm/master/kubernetes/kibana-service.yaml
```
