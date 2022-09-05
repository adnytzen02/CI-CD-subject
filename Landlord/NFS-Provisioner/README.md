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
$ sudo mkdir /opt/sharefolder
$ sudo chown -R nobody:nogroup /opt/sharefolder
$ echo "/opt/sharefolder 192.168.61.0/24(rw,sync,no_subtree_check,no_root_squash)" | sudo tee /etc/exports
```

