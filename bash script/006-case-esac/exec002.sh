#!/bin/bash

# 上網時數問卷

echo "您上網的時數?"
echo ‘1>1小時以內’
echo ‘2>1-5小時’
echo ‘3>5小時以上’
echo "您的選擇是1, 2,還是3?"
read number
case $number in
 1)
        echo "很棒"
        ;;
 2)
        echo "別忘了要起身運動喔!"
        ;;
 3)
        echo "半小時眼睛要休息一下喔!"
        ;;
  *)
        echo "請選1,2,3"
        exit 1
esac
echo "謝謝"

