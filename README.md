# 雲端與SRE工程師班

### 專題-CICD部署策略
 - [x] Jenkins GUI
 - [x] Jenkinsfile
 - [x] Git
 - [x] Kubenetes YAML
 - [x] Dockerfile
 - [x] Podman
 - [x] Busybox   
 
 利用 Dockerfile 建立使用 busybox 的網站 Image ，   
 Git-hooks追蹤撰寫的 Jenkinsfile 並自動 PUSH 到 Jenkins GUI上監控環境部署，   
 使用 Kubenetes 管理數個不同版本的 Pod 與 Service。   
 
 
### Linux shell
 - [x] Bash-script
 
熟悉Linux基礎命令，撰寫Shell程式。   
懂得使用 Ubuntu: apt-get install、Alpine: apk install安裝各式管理程式。   

### CICD
 - [x] Git
 - [x] Jenkins GUI
 - [x] Kubenetes
 - [x] Podman
 
熟知 Git 版本控制、設計 Jenkinsfile 使用 K8S 容器部署專屬測試環境。
 
### MySQL
 - [x] MariaDB
 - [x] Workbench
 - [x] SQLite
 - [x] Kettle
 
 安裝MariaDB、Workbench。   
 將 VM 主機中的 MySQL 用 SSH 連線至 Workbench 管理資料庫。   
 熟悉SQL基礎語法、使用Kettle使用經驗。   
 
 ### Kubernetes
 - [x] Kubenetes
 - [x] Docker
 - [x] Podman
 - [x] CRI-O
 - [x] Container
 - [x] Landlord   

安裝 CRI-O、Podman、K8S kubelet、kubeadm 等 K8S 所需的管理工具。   
建立 3 台 VMware 虛擬主機並安裝 K8S，賦予其中一台主機 "管理者" 標籤，其餘 2 台給予 "執行者" 標籤。   
  - Kubernetes 在 1.24 version 開始不支援 docker 轉而使用 CIR-O 。  
  - CIR-O 滿足 CRI 標準且能產生相容於 OCI 標準 container 的解決方案，整個設計全部都是針對 K8S 打造。   
  - 因不需要安裝 Docker，管理 I 的任務交給 Podman 負責，Podman 擁有 docker 的所有功能，且不需要 docker daemon 導致出現安全漏洞。   

landlord 利用 K8S pligs 社群建立公寓式管理。


### 大數據平台
 - [x] Hadoop
 - [x] HDFS   

Datatechnology 核心 hadoop 彙整各式各樣資訊，豐富的資料給 HIVE 做決策分析，Spark 深度機器學習，Hbase 能 IOT 物聯網，時間軸有差異的資料。    
透過一些 mechine learn 製作預測的基礎，Spark 一個平台製作 hadoop 之上，資料高速大量資料，HBase : NoSQL 資料庫，處理 IOT 物聯網資料。   


### 公有雲-Google could platform (GCP)
 - [x] KVM
 - [x] SSH
 - [x] Ubuntu Install   

### 私有雲-VMware
 - [x] TCP/IP
 - [x] Ubuntu Install
 - [x] Alpine Install   
