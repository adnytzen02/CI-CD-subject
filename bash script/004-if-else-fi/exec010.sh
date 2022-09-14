#! /bin/bash

'''
請使用者輸入 分數
分數 小於等於 60  
出現 D grade
分數 小於等於 80  大於 60
出現 C grade
否則出現 B grade(大於 80
'''


read  -p  "no?"  ans
if  [ ${ans}  -le  60 ] ;then
echo  " D grade "
elif   [ ${ans}  -le  80 ] ; then
   echo  " C grade "
else
echo " B grade "
fi
