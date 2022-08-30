# 金絲雀部署-demo

## 建立 post-commit
#### 先初始化 Git 儲存庫
  * git init
> 
    * nano .git/hooks/post-commit
>

    #!/bin/bash

    jenkinsURL="http://jenkins.k8s.org/git/notifyCommit?url="
    repo="ssh://bigred@192.168.61.4/home/bigred/wk/canary-demo"
    branchName=$(git rev-parse --abbrev-ref HEAD)

    curl -s "${jenkinsURL}${repo}&branches=${branchName}"


    
