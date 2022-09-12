## 建立使用者憑證

```js
mkdir suser; cd suser
```
```js
mkdir user001;cd user001
```

```js
openssl genrsa -out private.key 2048
```
* openssl 是憑證，告訴 K8S 產生一個請求檔
    * key private.key = 私鑰
    * -out CSR.csr 請求檔
    * CN = 使用者 ， O = 群組
```js
openssl req -new -key private.key -out CSR.csr -subj "/CN=user001/O=user001"
```

* 轉譯 請求檔
```js
openssl req -noout -subject -in CSR.csr
```

```js
$ export BASE64_CSR=$(base64 < CSR.csr | tr -d "\n")
```
* 產生 csr.yaml，把環境變數置換並產生
    * expirationSeconds 校期

```js
cat csr.yaml | envsubst | kubectl apply -f -
```

## 許可憑證
```js
kubectl get csr
```
```js
kubectl certificate approve user001-csr
```
```js
kubectl get csr
```

## 下載許可憑證
* 將憑證下載後，K8S也授權
```js
kubectl get csr user001-csr -o jsonpath='{.status.certificate}' | base64 -d > k8s-signed.crt
```

```js
cat k8s-signed.crt
```

```js
openssl x509 -noout -subject -in k8s-signed.crt
```

## 檢視 kubeconfig
```js
kubectl config view
```
* K8S在認證的是時候用憑證client-certificate-data: REDACTED    client-key-data: REDACTED
    * 是用openssl的憑證檔
    * 跟家目錄./KUBE/config是一模一樣，K8S做認證是這個檔案

## 產生使用者的 kubeconfig
* 憑證內容將 .kube/config讀取 丟到config.tmp，為甚麼要前6行，前6行內容固定
```js
kubectl config view --flatten=true | head -n 6 > config.tmp
```
```js
echo 'contexts:
  - context:
      cluster: kubernetes
      namespace: user001
      user: user001
    name: user001-context
current-context: user001-context
kind: Config
preferences: {}
users:
  - name: user001
    user:
      client-certificate-data: ${K8S_CRT}
      client-key-data: ${K8S_KEY}' >> config.tmp
```
* 宣告${K8S_CRT} ， ${K8S_KEY}‘}' >> config.tmp，製作出一個範本
    * 置換config檔案的內容

* .kube/裡頭的config檔案，就從裡面讀區資訊檔案，紀錄K8S主機資訊當時的帳號，把kube_config給其他人，就能完成憑證

## 產生使用者的 kubeconfig
* 丟到環境變數，產生config檔，要做bash_64的翻譯才會接受

```js
export K8S_CRT=$(base64 < k8s-signed.crt | tr -d "\n")
```
```js
export K8S_KEY=$(base64 < private.key | tr -d "\n")
```
```js
cat config.tmp | envsubst > config
```

## K8S 執行
```js
sudo podman run -it --rm --name s1 -d quay.io/flysangel/image:landlord.kubectl bash
```
* 將設定檔複製到 podman 測試
```js
sudo pdoman cp config s1:/home/bigred/.kube/config
```
```js
sudo podman exec -it s1 bash
```


## 刪除 csr
```js
kubectl delete csr user001-csr
```

```js
openssl x509 -noout -text -in k8s-signed.crt
```

* 產生私鑰，產生請求檔，用kubectl與.kube/config檔案做溝通，
建立新的憑證最好是全部刪除

## RBAC
* Role Based Access Control (RBAC)
1. 擁有多個具有不同屬性的用戶，建立適當的身份驗證機制。
2. 完全控制每個用戶或用戶組可以執行的操作。
3. 完全控制 pod 內的每個進程可以執行哪些操作。
4. 限制命名空間的某些資源的可見性。
```js
kubectl create ns user001
```
* 建立 role.yaml，並執行
```js
nano role.yaml
```
```js
kubectl apply -f role.yaml
```

* 建立 rolebind.yaml ，並執行
```js
nano rolebind.yaml
```
```js
lubectl apply -f rolebind.yaml
```

## 檢視 RBAC
```js
kubectl get roles -n user001
```
```js
kubectl get rolebinding -n user001
```

## 測試 RBAC
```js
sudo podman exec -it s1 bash
```
* 在 Bash-5.1$ 環境內
```js
kubectl get pod -n user001
```
```js
kubectl run a1 --image=quay.io/flysangel/nginx -n user01
```