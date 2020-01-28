# Redis

```bash
# label for nodeSelector
kubectl get nodes
kubectl label nodes <node-name> node_store_type=mysql

# remove label
kubectl label nodes <node-name> node_store_type-
```

## 常用配置查看和设置

```bash
show variables like 'max_connections';
show global variables like 'innodb_buffer_pool_size';

# 通常设置为内存的80%左右
set global innodb_buffer_pool_size=1073741824;
```
