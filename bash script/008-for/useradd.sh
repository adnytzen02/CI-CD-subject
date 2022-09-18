#!/bin/bash

'''
用$@方式建立user01、user02、user03、user04帳號
要sudo權限才能 建立帳號、更改/etc/sudoers
改/etc/sudoers 內 NOPASSWD:ALL
建立帳號不過密碼
'''


for var in  $@
do
    # 判斷有無此用戶，若無建立用戶
    grep ${var} /etc/passwd > /dev/null
    if [ $? != 0] ;then
        sudo useradd -m -s /bin/bash  $var
        echo "Account establishment completed !"
    else
        echo "This Account is exist"
done

