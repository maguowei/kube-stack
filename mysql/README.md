# MySQL


## 常用配置查看和设置

```bash
show variables like 'max_connections';
show global variables like 'innodb_buffer_pool_size';

# 通常设置为内存的80%左右
set global innodb_buffer_pool_size=1073741824;
```

## Grafana 仪表盘

- [MySQL Overview](https://grafana.com/grafana/dashboards/7362)
- [Mysql - Prometheus](https://grafana.com/grafana/dashboards/6239)
