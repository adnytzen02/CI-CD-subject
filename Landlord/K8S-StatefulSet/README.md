## StatefulSet
* StatefulSet 中所有 Pod 的名字都會以遞增整數作為結尾(以0為起點), 因此 Pod DNS 變得容易訪問, ReplicaSet 則隨機生成 Pod 名字


# 驗證 nginx 首頁
```js
kubectl apply -f statefulset-nginx.yaml
```

```js
kubectl get pod -o wide
```

* 逐一檢查 3 個 nginx 網頁
```js
curl <Pod-IP>
```

* 逐一新增 3 個 nginx 網頁
```js
kubectl exec -it nginx-0 -- bash -c "echo 'My nginx-0' > /usr/share/nginx/html/index.html"
```

```js
curl <Pod-IP>
```

* 對於指向 StatefulSet 的 Service, 其他服務訪問可透過該 Service 取得每個 Pod 的 DNS 名稱, 以 Pod A-0 為例, 透過 a-0.A.default.svc.cluster.local 即可訪問服務

## 建立 Service StatefulSet
```js
kubectl apply -f svc-nginx.yaml
```
```js
kubectl get service
```

## 刪除 StatefulSet
```js
kubectl delete -f svc-nginx.yaml
```
```js
kubectl delete -f statefulset-nginx.yaml
```
```js
kubectl delete pvc html-storage-nginx-0 html-storage-nginx-1 html-storage-nginx-2
```
