#!/bin/bash

'''
設定名稱為add 、 sub 、 multi 、 div 4個各別的函數，
用名稱 參數1 參數2 呼叫，
其結果都放入result變數呈現。
'''


add() {
        x=$1
        y=$2
        add=$((x+y))
        echo "add = $add"
}
sub() {
        x=$1
        y=$2
        sum2=$((x-y))
        echo "sub = $sum2"
}
multi() {
        x=$1
        y=$2
        sum3=$((x*y))
        echo "multi = $sum3"
}
dev() {
        x=$1
        y=$2
        sum3=$((x/y))
        echo "dev = $sum3"
}
result() {
        add $1 $2
        sub $1 $2
        multi $1 $2
        dev $1 $2
}

add 10 20
echo $result
sub  200 100
echo $result
multi  20  30
echo $result
div  100 10
echo $result
