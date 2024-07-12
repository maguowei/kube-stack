# mitmproxy

```bash
kubectl port-forward services/mitmproxy 8081:8081

# 输出证书
kubectl exec -it deployments/mitmproxy -- cat /root/.mitmproxy/mitmproxy-ca-cert.pem
```
