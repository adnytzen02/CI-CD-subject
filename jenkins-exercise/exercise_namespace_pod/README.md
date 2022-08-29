# 實作練習

## 在K8S叢集建立一個namespace命名cicd
* 首先撰寫 pod-a1.yaml
  * a1 pod 部署在 cicd namespace
  * image 使用 mj509.flymks.com:9090/mj15r/alpine.httpd
  * imagePullPolicy設定Always

##### 透過Jenkinsfile 部署 pod-a1.yaml
