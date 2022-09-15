#!/bin/bash

# 使用者輸入密碼轉小寫；密碼放文字檔(本例檔名word)

pw=$(cat word)
read  -p "password?" ans
if [ "${ans,,}" = "$pw" ]
then
  echo "pass"
else
  echo "not correct"
fi
