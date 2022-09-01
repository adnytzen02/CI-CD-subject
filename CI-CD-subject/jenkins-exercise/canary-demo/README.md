# 金絲雀部署-demo

### K8S 建立 namespace 命名為 prod
```js
kubectl create -n prod
```
### K8S 建立 namespace 命名為 dev
```js
kubectl create -n dev
```

### 在 prod 建立 imagePullSecrets
```js
kubectl create secret generic regcred \
--from-file=.dockerconfigjson=/home/bigred/auth.json \
--type=kubernetes.io/dockerconfigjson \
- n prod
```
### 在 dev 建立 imagePullSecrets
```js
kubectl create secret generic regcred \
--from-file=.dockerconfigjson=/home/bigred/auth.json \
--type=kubernetes.io/dockerconfigjson \
- n dev
```

### Pod 使用 ImagePullSercets 語法
```js
nano <name.yaml>
```
----
```js
spec:
    containers:
      - name: a1
        image: mj509.flymks.com:9090/mj15r/alpine.httpd:1.0.0
        imagePullPolicy: Always
    imagePullSecrets:
      - name: regcred
```

## 建立 post-commit
#### 先初始化 Git 儲存庫
> git init
### 建立post-commit文件  
>nano .git/hooks/post-commit
```js  
#!/bin/bash

jenkinsURL="http://jenkins.k8s.org/git/notifyCommit?url="
repo="ssh://bigred@192.168.61.4/home/bigred/wk/canary-demo"
branchName=$(git rev-parse --abbrev-ref HEAD)
```
    curl -s "${jenkinsURL}${repo}&branches=${branchName}"

### 給予權限
    chmod +x .git/hooks/post-commit


## 建立 post-merge
 - [x] 用途一樣是通知 jenkins
 - [x] 直接複製 post-commit 即可
---
```js
cp .git/hooks/post-commit .git/hooks/post-merge
```
```js
chmod +x .git/hooks/post-merge
```
---
### 新增　Jenkins multibranch pipeline 作業
  * 作業命名『canary-demo』
  * 連接到 canary-demo git 儲存庫
```js
git add .
```
```js
git commit -m "Initial commit"
```

### 部署金絲雀 Deployment
```js
kubectl apply -f b1-canary.yaml -n prod
```

> scale "b1-prod" pod 的數量至 4
```js
kubectl -n prod scale deployment b1-prod --replicas=4
```
---
### 檢視部署狀態
```js
kubectl get all -n prod
```
## 輪詢 /info URL
#### 開啟一個新的 CMD 視窗登入 主機
```js
while true;do curl 192.168.61.221/chi-bin/info;sleep 3; done
```

### 建立 canary branch
```js
git checkout -b canary
```

* 修改 info.cgi
```js
    ::
version="v2.0.0" 
    ::
```

部署 v2 到正式環境
```js
 git checkout master  ;

 git log --online --all
```
---
```js
git merge canary
```
確認 v2 部署狀態
```js
watch kubectl get pod -n prod
```
### 回到輪詢 /info URL 的 CMD 視窗，檢視成果
---
## 建立開發用 branch
```js
git checkout -b dev
```

* 修改 info.cgi
```js
nano info.cgi
```
```js
    ::
version="v3.0.0"
    ::
```
```js
git add info.cgi
```
```js
git commit -m 'Test Verison 3'
```
#### 到 Jenkins 網頁確認執行結果

### 確認部署狀態
```js
kubectl get all -n dev
```

## 手動測試 App

```js
kubectl get pod -n dev -o wide
```
```js
curl 10.244.1.62/cgi-bin/info
```
***
1. 當程式設計師測試App沒問題
2. 使用 金絲雀 部署策略
***

## 金絲雀部署 Part 1

### 部署金絲雀前，先擴展 "b1-prod" pod 的數量至 4
```js
kubectl -n prod scale deployment b1-prod --replicas=4
```
* 切換至 canary branch
```js
git checkout canary
```
---
## 金絲雀部署 Part 2
```js
git merge dev
```
> 到 Jenkins 網頁確認執行結果
> 確認輪詢狀態，回到 /info.cgi URL 的 CMD 視窗

---
# 確認新功能運作無任何問題後，部署至正式環境 !

## 金絲雀部署 Part 3
* 切換至 master branch
```js
git checkout master
```
* 合併 canary branch
```js
git merge canary
```

## 確認新版本上線
1. 至 Jenkins 網頁確認執行結果
2. 回到 /info URL 的 cmd 視窗確認結果

---
# 上線後發現問題 !
1. 確認 deployment rollout history
```js
kubectl rollout history deployment/b1-prod -n prod
```
2. 確認 revision=2
```js
kubectl rollout history deployment/b1-prod --revision=2 -n prod
```

## Rollback
* 避免影響當前服務，得先擴展 Pod 數量
```js
kubectl -n prod scale deployment b1-prod --replicas=4
```

* rollback 至前一個版本
```js
kubectl rollout undo deployment/b1-prod -n prod
```

