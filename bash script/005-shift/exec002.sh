#!/bin/bash

'''
執行時宣告密碼
'''

read  -p "password?" ans
if [ "$ans" = "$1" ]
then
  echo "pass"
else
  echo "not correct"
fi
