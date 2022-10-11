#!/bin/bash

# 產生10個帳號

for ((no=1;no<=10;no=no+1))
do
    account=$no
    sudo useradd -m -s /bin/bash   ${account}
done
