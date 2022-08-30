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

### 開啟一個新的 CMD 視窗登入 主機
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


