FROM mj509.flymks.com:9090/mj15r/alpine:3.15.4
RUN \
  apk update && \
  apk add --no-cache nano sudo bash wget curl git tree grep \
    elinks shadow procps util-linux coreutils binutils \
    findutils && \
  curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash && \
    # 設定 filebrowser
    filebrowser config init --port 4000 --address "" --log "/tmp/fbs" --root="/srv" && \
    # 建立管理者帳號
    filebrowser users add admin "admin" --perm.admin=true
CMD ["filebrowser"]
