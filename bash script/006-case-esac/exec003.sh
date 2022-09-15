#!/bin/bash

# case加入while迴圈

#while :
while true
do
echo -e '
                   選單
               1.程式1
               2.程式2
               3.程式3
               4.離開'

read -p "請輸入1-4選項?"  number
case $number in
 1)
        echo "程式1"
        ;;
 2)
        echo "程式2"
        ;;
 3)
        echo "程式3"
        ;;
 4)
         exit
         ;;
  *)
        echo "請選1,2,3,4?"
         ;;
esac
done
echo "謝謝"

