# Kubernetes Stack

```bash
cp .env.tpl .env
```

## kubectl

```bash
kubectl run kibana --generator=run-pod/v1 --image=kibana:7.0.0 --env="ELASTICSEARCH_URL=http://elasticsearch:9200"
kubectl expose pod kibana --port=5601 --type NodePort

kubectl run apm --generator=run-pod/v1 --image=elastic/apm-server:7.0.0 -- -e -E output.elasticsearch.hosts=http://elasticsearch:9200
kubectl expose pod apm --port=8200 --type NodePort
```

## kubernetes yaml

```bash
# install apm and kibana
kubectl create -f https://raw.githubusercontent.com/maguowei/elastic-apm/master/kubernetes/apm.yaml
kubectl create -f https://raw.githubusercontent.com/maguowei/elastic-apm/master/kubernetes/kibana.yaml
```
