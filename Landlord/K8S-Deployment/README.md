## Deployment
* Deployment 為 Pod 和 ReplicaSet 提供聲明式更新

## ReplicaSet
* ReplicaSet 可建立並管理多個 Pod，但所有 Pod 共享同一個 PVC，並綁定同一個 PV

* K8S 執行
```js
kubectl apply -f pv-rwo-7m.yaml
```

```js
kubectl get pv pv-rwo-7m
```

* 建立 Local PVC
```js
kubectl apply -f pvc-rwo-4m.yaml
```

## 建立Deployment
```js
kubectl apply -f deploy-nginx.yaml
```

## 建立 Pod 使用 PVC
* 在執行主機執行
```js
sudo mkdir -p /opt/pv/7m
```
```js
"echo 'Hello My Pvc' |sudo tee /opt/pv/5m/index.html"
```

* 回到master主機
```js
kubectl apply -f deploy-nginx.yaml
```
```js
kubectl get pod -o wide
```

* 對於 ReplicaSet 管理的 Pod，雖然每個 Pod 都有 hostname，當 Pod 被移轉時，hostname 會重新分配，對於只 向 ReplicaSet 的 Service，其他服務訪問 Service 時會被隨機分配到某一個 Pod

## 建立 Service Deployment
```js
kubectl apply -f svc-nginx.yaml
```
```js
kubectl get service
```

## 觀察 Service Deployment
* CLUSTER-IP
```js
kubectl get service -n kube-system
```

```js
nslookup
```
* CLUSTER-IP  SERVER
    * curl 每個 pod 的 IP
```js
server 10.98.0.10
```

## 滾動升級
```js
kubectl set image deployment <deployment> <container>=<image> --record
```
```js
kubectl set image deployment.apps/nginx nginx=quay.io/nlnlqaq/nginx:1.23.0 --record
```
* rollout 狀態
```js
kubectl rollout status deployment nginx
```
* rollout 歷史紀錄
```js
kubectl rollout history deployment nginx
```

## 回滾
```js
kubectl rollout undo deployment nginx --to-revision=1
```
```js
kubectl describe deployment nginx
```

## 刪除 Deployment
* 刪除練習環境
```js
kubectl delete -f svc-nginx.yaml
```
```js
kubectl delete -f deploy-nginx.yaml
```
```js
kubectl delete -f pvc-rwo-4m.yaml
```
```js
kubectl delete -f pv-rwo-7m.yaml
```
```js
sudo rm -r /opt/pv/7m
```
