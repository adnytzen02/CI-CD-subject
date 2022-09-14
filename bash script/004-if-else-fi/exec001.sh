#!/bin/bash

'''
寫支密碼程式
請使用者輸入密碼
密碼為zxc
正確出現 pass，不正確會出現 not correct
'''

read  -p "password?" ans
if [ "$ans“ = "zxc" ]
then
  echo "pass"
else
  echo "not correct"
fi
