#!/bin/bash

'''
出現選單讓使用者輸入檔名，檔案存在就結束；
檔案不存在 告知檔案不存在；再出現選單讓其選
選單如下
1- filename 
2- exit
'''

while true
do
clear
echo  -e "
 1- file name
 2- exit"
#echo   "1- filename"
#echo   "2- exit"
read -p "choice?" cho
case $cho in
1)
 read -p "file name?" fn
 [ -f $fn ] && break  # 檔案存在，跳出迴圈
 echo "file not found" && sleep 1 && continue
;;
2)
 break
;;
*)
 read -p  "please choice 1 or 2 !" -t 2
 sleep 1
;;
esac

done
echo "program end"
