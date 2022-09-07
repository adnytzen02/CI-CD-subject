# NFS 共享檔案系統
    * 在 kubernetes 上使用 NFS

## 安裝 NFS 套件
* K8S master/worker 都要安裝
```js 
sudo apk update
```
```js
sudo apk add nfs-utils
```

* K8S master 執行
```js
sudo rc-update add nfs
```

```js
sudo rc-service nfs start
```

* K8S 建立共用資料夾
```js
sudo mkdir /opt/sharefolder;
sudo chown -R nobody:nogroup /opt/sharefolder
```
```js
echo "/opt/sharefolder 192.168.61.0/24(rw,sync,no_subtree_check,no_root_squash)" | sudo tee /etc/exports
```

## 啟動 NFS Server
* K8S master 重新啟動 nfs server
```js
sudo rc-service rpcbind restart;
sudo rc-service nfs restart
```

## 安裝 Helm 3
#### 利用 Helm 管理 NFS
* K8S master 執行
```js
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
```

* 設定儲存庫
```js
helm repo add stable https://charts.helm.sh/stable
```
```js
helm repo update
```
* 檢視 Helm 儲存庫
```js
helm search repo stable | grep -v DEPRECATED
```

## 設定 NFS Provision
* K8S master 執行
```js
helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/
```

* 安裝 nfs 相關套件
```js
kubectl create ns nfs-provisioner
```
```js
helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
--set nfs.server=192.168.61.4 \
--set nfs.path=/opt/sharefolder \
-n nfs-provisioner
```
```js
helm ls -A
```

* 刪除方法
```js
helm delete nfs-subdir-external-provisioner -n nfs-provisioner
```

## 檢查 NFS 設定成果
```js
kubectl get storageclass
```
```js
kubectl get pod
```
* pvc-yml
```js
nano pvc-testclaim.yml
```

```js
# pvc-testclaim.yml
kind: PersistentVolumeClaim
apiVersion: v1
metadata:
  name: testclaim
spec:
  accessModes: ["ReadWriteMany"]
  storageClassName: nfs-client
  resources:
    requests:
      storage: 2Mi
```

```js
kubectl apply -f pvc-testclaim.yml
```
* 檢查建置
```js
kubectl get pvc;
kubectl get pv
```
* pod.yml
```js
nano pod-testclaim.yml
```

```js
# pod-testclaim.yml

kind: Pod
apiVersion: v1
metadata:
  name: pod-testclaim
spec:
  containers:
  - name: pod-testclaim
    image: quay.io/flysangel/busybox:1.34
    command:
      - "/bin/sh"
      - "-c"
      - "touch /opt/SUCCESS && exit 0 || exit 1"
    volumeMounts:
      - name: nfs-pvc
        mountPath: /opt
  restartPolicy: Never
  volumes:
    - name: nfs-pvc
      persistentVolumeClaim:
        claimName: testclaim
```




