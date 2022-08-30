# 總練習2-2
- [x] 請先完成總練習 2-1
- [x] 將 podman login 指令移至 build image stage 中
- [x] 將 podman login stage 刪除
- [x] 在 build image stage 之前新增兩個 stage

### 第一個 stage 命名為 shellcheck
* 負責檢查 invdb.sh 以及 inventory
* image 使用 quay.io/flyangel/shellcheck-alpine:v0.8.0
### 第二個 stage 命名為 Test
* image 使用
  * mj509.flymks.com:9090/mj15r/alpine.httpd:1.0.0
使用 curl 將 API 結果輸出

