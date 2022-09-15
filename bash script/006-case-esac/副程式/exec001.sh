#!/bin/bash
while :
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
        ./prog1.sh
        ;;
 2)
        ./prog2.sh
        ;;
 3)
        ./prog3.sh
        ;;
 4)
         break
         ;;
  *)
        echo "請選1,2,3,4?"

esac
done
echo "謝謝"
