#!/bin/bash

'''
建立多個帳號、密碼相同的自訂函數
刪除多個帳號的自訂函數
更改多個密碼的自訂函數
'''

create_mult_user(){
a=$1
b=$2
for((no=a;no<=b;no++))
do
    account=stu$no
    cat /etc/passwd | grep ${account} >/dev/null
    [ $? = 0 ]&& echo "${account} exist" && exit 1
    useradd -m -s /bin/bash ${account}
    echo ${account}:${account} | chpasswd
    sleep 0.5
    echo "${account} add"
done
}

delete_mult_user(){
a=$1
b=$2
for((no=a;no<=b;no++))
do
    account=stu$no
    userdel -r ${account} &>/dev/null
    [ $? =0] && echo "user delete" || echo "user no found"
done
}