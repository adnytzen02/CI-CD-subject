FROM mj509.flymks.com:9090/落地雲帳號/alpine:3.15.4
RUN \
  apk update && \
  apk add --no-cache nano sudo bash wget curl git tree grep \
    elinks shadow procps util-linux coreutils binutils \
    findutils openssh-server tzdata && \
  # 設定時區
  cp /usr/share/zoneinfo/Asia/Taipei /etc/localtime && \
  ssh-keygen -t rsa -P "" -f /etc/ssh/ssh_host_rsa_key && \
  echo -e 'Welcome to ALP sshd 6000\n' > /etc/motd && \
  # 建立管理者帳號 bigred
  adduser -s /bin/bash -h /home/bigred -G wheel -D bigred && \
  echo "%wheel   ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
  echo -e 'bigred\nbigred\n' | passwd bigred &>/dev/null && \
  rm /sbin/reboot && rm /usr/bin/killall
ENTRYPOINT ["/usr/sbin/sshd"]
CMD ["-D"]
