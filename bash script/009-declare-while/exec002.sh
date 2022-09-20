#!/bin/bash

# 無使用 declare 宣告 ; $(())照樣運算
no=100
sum=1000
z1=$(($no+$sum))
z2=$(($no-$sum))
z3=$(($no*$sum))
z4=$((${no}/${sum}))

echo $z1,$z2,$z3,$z4

