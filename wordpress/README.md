# WordPress

```bash
# create database first
$ kubectl create -f wordpress
$ kubectl exec -it $(kubectl get pod -l app=mysql -o jsonpath='{.items[0].metadata.name}') bash
$ mysql  -u root -p
$ mysql> create database wordpress;
```