## Container Image 設計
```js
mkdiralpine.fbs;
nano alpine.fbs/Dockerfile
```

## Container Image 建立與測試
```js
sudo podman build -t alpine.fbs alpine.fbs
```
```js
sudo podman images | grep fbs
```

## 手動部署 alpine.fbs Image
* 備份 Image
```js
sudo podman save localhost/alpine.fbs > alpine.fbs.tar
```

* 還原 Image
```js
sudo podman load < alpine.fbs.tar
```
```js
sudo podman images | grep fbs
```


## 建立 File Browser Server
* 建立 Pod
```js
nano pod-fbs.yaml
```
* K8S Pod 執行
```js
kubectl apply -f pod-fbs.yaml
```
```js
kubectl get pod -o wide
```
* 建置 SVC 
```js
nano svc-fbs.yaml
```
* K8S SVC 執行
```js
kubectl apply -f svc-fbs.yaml
```
```js
kubectl get all -o wide
```

## 在瀏覽器上輸入 SVC 的 IP:8080 位址
* 帳號密碼預設為 admin

## 移除 File Browser Server Pod
```js
kubectl delete -f svc-fbs.yaml;
kubectl delete -f pod-fbs.yaml
```

## Image 上傳 Qauy
* 登入 Quay
```js
sudo podman login mj15r.flymks.com:9090
```

* Push Image
```js
sudo podman push mj509.flymks.com:9090/mj15r/alpine.fbs:1.0.0
```
