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
kubectl exec -it deployments/superset --  sh -c 'superset db upgrade; superset init'

# 配置 `Public` 角色权限，增加
`all datasoruce access on all_datasource_access`

# port-forward
kubectl port-forward services/my-superset 8088:8088
```