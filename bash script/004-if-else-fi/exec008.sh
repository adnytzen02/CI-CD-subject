#!/bin/bash

'''
使用者輸入一個 檔名
若檔案存在 [ -f  檔名 ]  顯示 有此檔案
若檔案不存在  顯示 無此檔案
'''


read -p "file name" fn

if  [ -f ${fn} ] ; then
echo  ${fn} '檔案存在'
 else
echo  ${fn} '檔案不存在'
fi
echo end

