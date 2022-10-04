#!/bin/bash
# 根據source進來變數內容(使用者名稱)；建立對應的帳號

[ "$USER" != "root" ] && echo "no root to run" && exit 1
source hong.conf
for hu in $PROJECT_USER_NAME
do
user add -m -s /bin/bash $hu
done

exit 0