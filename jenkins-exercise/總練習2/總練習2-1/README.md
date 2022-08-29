### 在專案資料夾
  git init
### 在 Jenkins 網頁

### 建立 git hook post-commit
> nano .git/hooks/post-commit
  #!/bin/bash
  
curl -s http://jenkins.k8s.org/git/notifyCommit?url=ssh://bigred@192.168.150.4/home/bigred/wk/bi2
