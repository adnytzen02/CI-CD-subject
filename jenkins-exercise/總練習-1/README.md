# Jenkinsfile 撰寫四個 stage

* '1' podman 
* '2' build image
* '3' push image
* '4' deploy a1


## imagePullSecrets
#### 在主機登入落地 Quay !
    sudo podman login --tls-verify=false mj509.flymks.com:9090 -u mj15r
