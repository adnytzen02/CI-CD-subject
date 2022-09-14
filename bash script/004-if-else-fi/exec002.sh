#!/bin/bash

'''
1.給定目錄不存在；建立目錄
存在；告知已存在
2.給定檔案不存在；建立檔案
存在；告知已存在
3.給定帳號不存在；建立帳號
存在；告知已存在
'''

# 1.
[ ! -d myteam ] && mkdir myteam

# 查詢檔案
[ -f  "/home/bigred/.bashrc" ]
# 2.
test2{

read -p "file name" fn

if  [ -f ${fn} ] ; then
echo  ${fn} '檔案存在'
 else
echo  ${fn} '檔案不存在'
fi
echo end
}

# 3.
cat /etc/passwd | grep 帳號
[ $? != 0 ] && sudo useradd -m -s /bin/bash 帳號


