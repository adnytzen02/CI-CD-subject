## Container Image 設計
```js
mkdir alpine.httpd
nano alpine.httpd/Dockerfile
```

## Container 建立與測試
```js
sudo podman build -t mj509.flymks.com:9090/mj15r/alpine.httpd:1.0.0 alpine.httpd
```
```js
sudo podman run --rm --name a1 -d -p 8080:80
```
```js
curl http://localhost:8080
```

## Container 上傳 Quay
### 停止 Container
```js
sudo podman stop a1
```
### 登入 quay.io
```js
sudo podman login mj509.flymks.com:9090
```

```js
sudo podman push mj509.flymks.com:9090/mj15r/alpine.httpd:1.0.0
```

## K8S 使用 httpd
* 執行 K8S
```js
kubectl run a1 --image=mj509.flymks.com:9090/mj15r/alpine.httpd:1.0.0
```

```js
kubectl get pod -o wide
```

* 刪除 pod 
```js
kubectl delete pod a1
```