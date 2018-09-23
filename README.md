# Elastic APM

## compose

```bash
cp .env.tpl .env
make up
make logs
make down
```

## kubectl

```bash
# replace  http://elasticsearch:9200

kubectl run kibana --image=docker.elastic.co/kibana/kibana:6.4.1 --env="ELASTICSEARCH_URL=http://elasticsearch:9200"
kubectl expose deployment kibana --port=5601 --type NodePort

kubectl run apm --image=docker.elastic.co/apm/apm-server:6.4.1 -- -e -E output.elasticsearch.hosts=http://elasticsearch:9200
kubectl expose deployment apm --port=8200 --type NodePort
```

## kubernetes yaml

```bash
# install elasticsearch
helm install --name elasticsearch incubator/elasticsearch
kubectl expose service elasticsearch-client --port=9200 --target-port=9200 --name=elasticsearch
kubectl expose service elasticsearch-client --port=9200 --name=elasticsearch-expose-9200 --type NodePort

# install apm and kibana
kubectl create -f https://raw.githubusercontent.com/maguowei/elastic-apm/master/kubernetes/apm-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/maguowei/elastic-apm/master/kubernetes/apm-service.yaml
kubectl create -f https://raw.githubusercontent.com/maguowei/elastic-apm/master/kubernetes/kibana-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/maguowei/elastic-apm/master/kubernetes/kibana-service.yaml
```
