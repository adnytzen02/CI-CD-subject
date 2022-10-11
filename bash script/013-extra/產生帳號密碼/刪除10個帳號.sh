#!/bin/bash

# 刪除10個帳號

for ((no=1;no<=10;no=no+1))
do
    account=$no
    sudo userdel -r ${account} # -r 刪除所有目錄
done

