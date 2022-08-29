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

.git/refs/heads
├── dev
├── master
└── prod


