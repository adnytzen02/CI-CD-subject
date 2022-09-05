FROM mj509.flymks.com:9090/mj15r/alpine:3.15.4
RUN \
  apk update && \
  apk add --no-cache nano sudo bash wget curl git tree grep \
    elinks shadow procps util-linux coreutils binutils \
    findutils openssh-server tzdata && \
  wget https://busybox.net/downloads/binaries/1.28.1-defconfig-multiarch/busybox-x86_64 && \
  chmod +x busybox-x86_64 && \
  mv busybox-x86_64 bin/busybox1.28 && \
  mkdir -p /opt/www && echo "let me go" > /opt/www/index.html && \
  # 設定時區
  cp /usr/share/zoneinfo/Asia/Taipei /etc/localtime && \
  ssh-keygen -t rsa -P "" -f /etc/ssh/ssh_host_rsa_key && \
  echo -e 'Welcome to ALP sshd 6666\n' > /etc/motd && \
  # 建立管理者帳號 bigred
  adduser -s /bin/bash -h /home/bigred -G wheel -D bigred && \
  echo -e 'bigred\nbigred\n' | passwd bigred &>/dev/null && \
  adduser -s /bin/bash -h /home/rbean -D rbean && \
  adduser -s /bin/bash -h /home/gbean -D gbean && \
  echo -e 'rbean\nrbean\n' | passwd rbean &>/dev/null && \
  echo -e 'gbean\ngbean\n' | passwd gbean &>/dev/null && \
  echo "%wheel   ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
  rm /sbin/reboot && rm /usr/bin/killall


ENTRYPOINT ["/usr/sbin/sshd"]
CMD ["-D"]
