#!/bin/bash

# 改成選完會出現謝謝；清畫面放哪

#while :
while true
do
clear
echo -e '
                   選單
               1.程式1
               2.程式2
               3.程式3
               4.離開'

read -p "請輸入1-4選項?"  number

case $number in
 1)
        read -p "程式1"
        ;;
 2)
        read -p "程式2"
        ;;
 3)
        read -p  "程式3"
        ;;
 4)
         break
         ;;
  *)
        echo "請選1,2,3,4?"
esac
done
echo "謝謝"
