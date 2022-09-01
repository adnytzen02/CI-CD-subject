# Jenkins-練習
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

## 部署前置作業
```js
kubectl create ns jenkins
```
```js
kubectl create secret generic kubeconfig --from-file=/home/bigred/.kube/config -n jenkins
```
---
## 部署 Jenkins
```
kubectl apply -f ~/Jenkins-yaml/Jenkins.yaml
```

## 確認部署狀態
```js
kubectl get all -n jenkins
```
```js
kubectl get ingress -n jenkins
```
---
## 執行第一個 Job
* 在左側按下『馬上建置』
 * 滑鼠移至綠色區塊可確認 Log
 * 左側下方「建置歷程」 → 點選 #1
 * 選擇 Console Output 查看終端機輸出
---
## 設定 SSH 免密碼
* Jenkins 透過 SSH 連接 Git
* Jenkins 主機中已預先產生 SSH 公私鑰
* 將公鑰給主機

```js
kubectl -n jenkins exec -it jenkins -- cat /var/jenkins_home/.ssh/ssh_host_rsa_key.pub | tee -a ~/.ssh/authorized_keys
```

---
## 新增 Jenkins Job
1. 在 Jenkins Dashboard 點選左側新增作業
2. item name 輸入 <project name>
3. 下方選擇 Multibranch Pipeline
4. 按下 OK
5. 點選 Branch Sources 頁籤 → 點選 Add Source 選擇 Git
6. Project Repository 輸入
  ```js
  ssh://<hostname>@<hostIP>/home/<hostname>/<file路徑>
  ```
7. Credentials 選擇 ssh-private-key
8. Save

---
## 手動通知 Jenkins
* 先將 Jenkinsfile 備份至 Git 儲存庫

```js
git add Jenkinsfile
```
```js
git commmit -m "Add Jenkinsfile"
```
* 手動通知 Jenkins
```js
curl http://jenkins.k8s.org/git/notifyCommit?url=ssh://<hostname>@<hostIP>/home/<hostname>/<file路徑>
```
---
## 搭配 Git Hooks 達到 commit 會自動通知 Jenkins
* 建立 post-commit
```js
nano .git/hooks/post-commit
```
```js
#!/bin/bash

curl http://jenkins.k8s.org/git/notifyCommit?url=ssh://<hostname>@<hostIP>/home/<hostname>/<file路徑>
```
```js
chmod +x .git/hooks/post-commit
```
---
## 觸發 post-commit
```js
git add Jenkinsfile;
git commit -m "Update Jenkinsdile"
```

