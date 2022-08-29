## 建立 mp3 專案資料夾
>~/wk$ mkdir mp3;cd mp3
    git init

## 建立 Jenkinsfile
    nano Jenkinsfile
    git add Jenkinsfile;git commit -m 'Init repo'


# git branch
    git branch
- [x] master
## 建立 branch
    git branch production
    git brnach dev
- [ ] dev
- [x] master
- [ ] production

## .git/refs/heads
    git log | head -n 1
commit f93568e98e7e1626eb3ff2af5554f70507a8c89d (HEAD -> master, production, dev)
    tree .git/refs/heads

###.git/refs/heads

├── dev

├── master

└── prod

    cat .git/refs/heads/master
f93568e98e7e1626eb3ff2af5554f70507a8c89d

## 手動刪除 branch
### 請 cat 另外兩個檔案確認內容
    cat .git/refs/heads/dev
    cat .git/refs/heads/production
    
    rm .git/refs/heads/production
    git branch
- [ ] dev
- [x] master
### 重新建立 branch，命名為 prod
    git branch prod
    
