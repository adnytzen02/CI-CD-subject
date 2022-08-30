# 金絲雀部署-demo

## 建立 post-commit
#### 先初始化 Git 儲存庫
> git init
### 建立post-commit文件  
>nano .git/hooks/post-commit
  
    #!/bin/bash

    jenkinsURL="http://jenkins.k8s.org/git/notifyCommit?url="
    repo="ssh://bigred@192.168.61.4/home/bigred/wk/canary-demo"
    branchName=$(git rev-parse --abbrev-ref HEAD)

    curl -s "${jenkinsURL}${repo}&branches=${branchName}"

### 給予權限
    chmod +x .git/hooks/post-commit


## 建立 post-merge
 - [x] 用途一樣是通知 jenkins
 - [x] 直接複製 post-commit 即可

    cp .git/hooks/post-commit .git/hooks/post-merge
  
