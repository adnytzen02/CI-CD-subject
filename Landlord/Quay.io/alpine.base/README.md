* 請設計一個 Container Image 名為 alpine.base，標籤 1.0.0，並滿足以下功能
    * 需要能啟動 httpd
    * 具有 bigred、rbean、gbean 帳號，密碼與帳號相同
    * 登入 alpine 提示為 Welcome to ALP base 6666
    * 第一隻程式為 sshd
* 將 Container Image 上傳至落地 Quay
```js
sudo podman build -t mj509.flymks.com:9090/mj15r/alpine.base:1.0.0 alpine.base
```
```js
sudo podman login mj509.flymks.com:9090
```
```js
sudo podman push mj509.flymks.com:9090/mj15r/alpine.base:1.0.0

```
* 在 K8S 使用 alpine.base
    ```js
    kubectl run t1 --image=mj509.flymks.com:9090/mj15r/alpine.base:1.0.0
    ```
    ```js
    ssh bigred@a1_ip 並執行 sudo busybox1.28 httpd -f -h /opt/www
    ```
    ```js
    ssh rbean@a1_ip 並執行 curl localhost
    ```
