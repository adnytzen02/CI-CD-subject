#!/bin/bash

# 判斷有無此用戶

PASSWD_FILE=/etc/passwd
read -p "Enter a user name : " username
if grep "^$username:" /etc/passwd >/dev/null
then
	echo "User '$username' found in $PASSWD_FILE file."
else
    echo "User '$username' not found in $PASSWD_FILE file."
fi

