# Jenkinsfile 撰寫四個 stage

* '1' podman 
* '2' build image
* '3' push image
* '4' deploy a1


## imagePullSecrets
#### 在主機登入落地 Quay !
    sudo podman login --tls-verify=false mj509.flymks.com:9090 -u mj15r

#### 檢視 auth.json
    sudo cat /run/containers/0/auth.json
{
        "auths": {
                "mj509.flymks.com:9090": {
                        "auth": "cXVheTpRdWF5MTIzNDU="
                }
        }
}
![image](https://user-images.githubusercontent.com/110806758/187136608-404d6947-11b7-42f9-8158-9b0a2af17b78.png)

#### 
