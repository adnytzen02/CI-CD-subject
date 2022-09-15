#!/bin/bash

# 使用者輸入密碼；只取所輸入的小寫英文字母比對

pw=$(cat word)
read  -p "password?" ans
if [ "${ans//[!a-z]/}" = "$pw" ]
then
  echo "pass"
else
  echo "not correct"
fi

