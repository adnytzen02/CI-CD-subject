#!/bin/bash
clear
read -p "請問有聽過這首歌嗎(y/n)?"  number
case $number in
 y | Y)
        echo "有聽過 +1 人"
        ;;
 n | N)
        echo "沒有聽過 +1 人"
        ;;
*)
        echo "請輸入(y或n)?"
esac
echo "謝謝您的答案"
