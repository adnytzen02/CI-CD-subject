# Jenkins
---
## 環境準備
---
- [x] 建立 K8S 叢集
- [x] K8S公共設施部署完成
 * MetalLB
 * Ingress NGINX Controller
 * Local Path Provisioner
 
## 在主機修改 /etc/hosts
```js
sudo nano /etc/hosts
```
```
<IP adress> jenkins.k8s.org
```
## 完成 git 必要設定
```
git config --list
```
```
user.name=<username>
user.email=<username>@example.com
core.editor=nano
```


