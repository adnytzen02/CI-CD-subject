## Container Image 設計
```js
mkdir alpine.sshd;
nano alpine.sshd/Dockerfile
```

## Container Image 建立與測試
* Build Image
```js
sudo podman build -t mj509.flymks.com:9090/mj15r/alpine:1.0.0 alpine.sshd
```
* 測試 Image
```js
sudo podman run --rm --name a1 -h a1 -d -p 22100:22 mj509.flymks.com:9090/落地雲帳號/alpine.sshd:1.0.0
```

```js
ssh bigred@mj509.flymks.com:9090 -p 22100
```

> a1:~$ 
```js
git verison
```
> a1:~$
```js
exit
```

## Container 上傳 Quay
* 停止 Container，登入 Quay
```js
sudo podman stop a1;
sudo podman login mj15r.flymks.com:9090
```
* Push Image
```js
sudo podman push mj509.flymks.com:9090/mj15r/alpine.sshd:1.0.0
```

## K8S 使用 sshd
* 執行 K8S
```js
kubectl run a1 --image=mj509.flymks.com:9090/mj15r/alpine.sshd:1.0.0
```
```js
kubectl get pod -o wide 
```

```js
ssh bigred@10.233.1.119
```
> bigred@192.168.41.4's passsword:bigred
> a1:~$
```js
exit
```
* 刪除 Pod
```js
kubectl delete pod a1
```