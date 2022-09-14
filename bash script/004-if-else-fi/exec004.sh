#!/bin/bash

'''
寫支密碼程式
請使用者輸入密碼，
密碼為asdf
使用者輸入asdf(不分大小寫)
若正確 出現 pass
若不正確 出現 not 
'''

read  -p "password?" passwd
if [ ${passwd,,} = "qwer" ]
then
  echo "pass"
else
  echo "not"
fi

