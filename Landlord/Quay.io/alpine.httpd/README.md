## Container Image 設計
```js
mkdir alpine.httpd;
nano alpine.httpd/Dockerfile
```
```js
kubectl run a1 --image=mj509.flymks.com:9090/mj15r/nginx:1.22.0
```
```js
kubectl get pod -o wide
```
```js
curl <pod-ip>
```

# 刪除 pod
$ kubectl delete pod a1

### Container Image 設計
$ mkdir alpine.httpd
$ nano alpine.httpd/Dockerfile

### Container 建立與測試
$ sudo podman build -t mj509.flymks.com:9090/mj15r/alpine.httpd:1.0.0 alpine.httpd

$ sudo podman run --rm --name a1 -d -p 8080:80

$ curl http://localhost:8080


### Container 上傳 Quay
$ sudo podman stop a1
$ sudo podman login mj509.flymks.com:9090

$ sudo podman push mj509.flymks.com:9090/mj15r/alpine.httpd:1.0.0
