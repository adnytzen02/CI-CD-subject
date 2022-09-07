## 建立 Local PV
```js
kubectl apply -f pv-rwo-5m.yaml
```
```js
kubectl get pv pv-rwo-5m
```


## 建立 local PVC
```js
kubectl apply -f pvc-rwo-3m.yaml
```

## 檢查 PV 與 PVC 有無綁定
```js
kubectl get pvc pvc-rwo-3m
```

```js
kubectl get pv pv-rwo-5m
```


## 建立 Pod 使用 PVC
```js
kubectl apply -f pod-nginx-1.yaml
```
