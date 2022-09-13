#!/bin/bash
'''
1.給定目錄不存在；建立目錄
2.給定檔案不存在；建立檔案
3.給定帳號不存在；建立帳號
'''

# 1
[ ! -d myteam ] && mkdir myteam


# 2
[ -f  "/home/bigred/.bashrc" ]

# 3
cat /etc/passwd | grep <user>
[ $? != 0 ] && sudo useradd -m -s /bin/bash <user>




