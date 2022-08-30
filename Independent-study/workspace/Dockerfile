FROM mj509.flymks.com:9090/mj15r/alpine:3.15.4
COPY busybox-x86_64
COPY webpage
RUN \
    apk update && \
    apk add --no-cache nano sudo bash wget curl git tree grep && \
    chmod +x busybox-x86_64 && \
    chmod +x webpage && \