FROM mj509.flymks.com:9090/mj15r/alpine:3.15.4
WORKDIR /root/bookstore-inventory
COPY invdb.sh /root/bookstore-inventory
COPY inventory /root/bookstore-inventory
RUN \
  apk update && \
  apk add --no-cache nano sudo bash wget curl tree grep sqlite && \
  wget https://busybox.net/downloads/binaries/1.28.1-defconfig-multiarch/busybox-x86_64 && \
  chmod +x busybox-x86_64 && \
  mv busybox-x86_64 /bin/busybox1.28 && \
  bash invdb.sh create && \
  mkdir -p /opt/www/cgi-bin && echo "let me go" > /opt/www/index.html && \
  cp inventory /opt/www/cgi-bin/

ENTRYPOINT ["/bin/busybox1.28"]
CMD ["httpd", "-f", "-h", "/opt/www"]
