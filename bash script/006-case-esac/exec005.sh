#!/bin/bash

# # 上網時數問卷改成 while 問卷

while true
do
clear
echo "您上網的時數?"
echo ‘1>1小時以內’
echo ‘2>1-5小時’
echo ‘3>5小時以上’
echo "您的選擇是1, 2,還是3?"
read number
case $number in
 1)
        echo "很棒"
        break
        ;;
 2)
        echo "別忘了要起身運動喔!"
         break
        ;;
 3)
        echo "半小時眼睛要休息一下喔!"
        break
        ;;
  *)
        echo "請選1,2,3"

        sleep 1
        continue
esac
done
echo "謝謝"