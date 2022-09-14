#!/bin/bash

'''
請使用者在5秒內猜1到9 一個數字
若使用者輸入 5
出現 BINGO!
'''

read -p "請在5秒內猜1到9 一個數字?" -t 5  ans
echo "您輸入的是:"$ans
if [ "$ans" = "5" ] ; then
echo "BINGO!"
fi


