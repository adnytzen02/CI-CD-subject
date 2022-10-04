#!/bin/bash
#帳號存在；不建立

[ "$USER" != "root" ] && echo "need root to run" && exit 26
source hong.conf
for hu in $PROJECT_USER_NAME
do
    grep $hu /etc/passwd >/dev/null
    if [ $? = 0 ] ;then echo "已有$hu帳號"
    else
        useradd -m -s /bin/bash $hu >/dev/null
        echo "已建立$hu帳號"
    fi
done
exit 0
