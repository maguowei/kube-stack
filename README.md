# Elastic Stack

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

kubectl run elasticsearch --generator=run-pod/v1 --image=elasticsearch:7.0.0 --env="discovery.type=single-node" --env "discovery.zen.minimum_master_nodes=1" --env "ES_JAVA_OPTS=-Xmx256m -Xms256m"
kubectl expose pod elasticsearch --port=9200 --type NodePort

kubectl run kibana --generator=run-pod/v1 --image=kibana:7.0.0 --env="ELASTICSEARCH_URL=http://elasticsearch:9200"
kubectl expose pod kibana --port=5601 --type NodePort

kubectl run apm --generator=run-pod/v1 --image=elastic/apm-server:7.0.0 -- -e -E output.elasticsearch.hosts=http://elasticsearch:9200
kubectl expose pod apm --port=8200 --type NodePort
```

## kubernetes yaml

```bash
# install elasticsearch
helm install --name elasticsearch incubator/elasticsearch
kubectl expose service elasticsearch-client --port=9200 --target-port=9200 --name=elasticsearch
kubectl expose service elasticsearch-client --port=9200 --name=elasticsearch-expose-9200 --type NodePort

# install apm and kibana
kubectl create -f https://raw.githubusercontent.com/maguowei/elastic-apm/master/kubernetes/apm.yaml
kubectl create -f https://raw.githubusercontent.com/maguowei/elastic-apm/master/kubernetes/kibana.yaml
```
