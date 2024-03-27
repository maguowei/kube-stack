# superset

```bash

# create admin
kubectl exec -it deployments/superset -- superset fab create-admin \
              --username admin \
              --firstname Admin \
              --lastname Admin \
              --email admin@localhost \
              --password admin

# init          
kubectl exec -it deployments/superset -- superset db upgrade && docker exec -it superset superset init

# port-forward
kubectl port-forward services/my-superset 8088:8088
```