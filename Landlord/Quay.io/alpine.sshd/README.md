## Container Image 設計
```js
mkdir alpine.sshd;
nano alpine.sshd/Dockerfile
```

## Container Image 建立與測試
```js
sudo podman build -t mj509.flymks.com:9090/mj15r/alpine:1.0.0 alpine.sshd
```
```js
sudo podman run --rm --name a1 -h a1 -d -p 22100:22 mj509.flymks.com:9090/落地雲帳號/alpine.sshd:1.0.0
```

```js
ssh bigred@mj509.flymks.com:9090 -p 22100
```

a1:~$ 
```js
git verison
```
a1:~$
```js
exit
```

