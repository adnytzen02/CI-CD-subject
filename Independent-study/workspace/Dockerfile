FROM mj509.flymks.com:9090/mj15r/alpine:3.15.4
COPY busybox-x86_64
COPY webpage
RUN \
    apk update && \
    apk add --no-cache nano sudo bash wget curl git tree grep && \
    chmod +x busybox-x86_64 && \
    chmod +x webpage && \
    mv busybox-x86_64 bin/busybox1.28 && \
    mkdir -p /opt/www/cgi-bin && echo "let me go" > /opt/www/index.html && \
    cp webpage /opt/www/cgi-bin/info

ENTRYPOINT ["/bin/busybox1.28"]
CMD ["httpd","-f","/opt/www"]