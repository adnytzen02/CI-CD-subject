### 在專案資料夾
  git init
### 在 Jenkins 網頁

### 建立 git hook post-commit
> nano .git/hooks/post-commit
  #!/bin/bash
  
  curl -s http://jenkins.k8s.org/git/notifyCommit?url=ssh://bigred@192.168.150.4/home/bigred/wk/bi2

到 Jenkins 網頁新增作業，作業命名 bi2
### 馬上建置
* 點選左側新增作業
* item name 輸入 bi2
* 下方選擇 Multibranch Pipeline
* 按下 OK
* 點選 Branch Sources 頁籤 -> 點選 Add source 下拉選 git
* Project Repository 輸入(主機IP)
  * ssh://bigred@192.168.150.4/home/bigred/wk/bi2
* Credentials 選擇 ssh-private-key
* 最後按下 Save
#### 新增作業完成後，Jenkins會自動掃描 Git 儲存庫

### 手動通知 Jenkins
必須先將 Jenkins 備份至 Git 儲存庫
  git add Jenkinsfile
  git commit -m "Add Jenkins"  
  
### 手動通知 Jenkins
  curl http://jenkins.k8s.org/git/notifyCommit?url=ssh://bigred@192.168.150.4/home/bigred/wk/bi2

