#!/bin/bash

'''
使用者輸入一個 ip
若所給iP 對應的電腦有開機[ "$? "  == "0" ] ;
顯示available
否則顯示unavailable
'''

'''
四種寫法皆可
[ $?  == 0 ]
[ $? == "0" ]
[ "$?" == "0" ]
[ "$?" == 0 ]
'''


read -p "請給IP?" ip
ping -c 1 -w 1 ${ip} >/dev/null
if [ "$?" == "0" ] ; then
echo  ${ip} '此IP有通'
 else
echo  ${ip} '此IP不通'
fi
echo 'end'
