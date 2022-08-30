## 在 Deploy Production stage 之前新增一個 stage
## stage 命名為 Deploy Dev
* ## when 宣告如下
  * when {
        not { branch 'master' }
  }
## steps 只需要一個 echo 'Hello Dev!'
## 建立 git hook post-commit

## 確認執行結果
>    git add Jenkinsfile
>    git commit -m "update test 09"
>    git log