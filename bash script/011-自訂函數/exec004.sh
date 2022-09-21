#!/bin/bash

# 顯示兩個數字相加的自訂函數

function add()
{
a=$1
b=$2
add=$((a+b))
}
read -p "請輸入第1個數字: " ans1
read -p "請輸入第2個數字: " ans2
add $ans1 $ans2
echo '第1個數字:'${ans1}'   第2個數字: '${ans2}
echo '兩數字相加為: '${add}
