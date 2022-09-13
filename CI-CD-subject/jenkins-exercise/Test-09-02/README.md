## 在 Deploy Production stage 之前新增一個 stage
### stage 命名為 Deploy Dev
* #### when 宣告如下
 ```js
 when {
        not { branch 'master' }
  }
```
* steps 只需要一個 echo 'Hello Dev!'
  * 建立 git hook post-commit

### 確認執行結果
```js
git add Jenkinsfile
```
```js
git commit -m "update test 09"
```
```js
git log
```

## git checkout
* 切換至 dev branch
```js
git checkout dev
```

### 確認Jenkinsfile 內容
```js
cat Jenkinsfile
```
## git pull
```js
git pull . master
```
```js
git log --oneline
```
