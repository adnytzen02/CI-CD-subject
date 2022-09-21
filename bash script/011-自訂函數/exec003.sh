#!/bin/bash

# 參數帶入函數

say()
{
echo testfun$1
gare=$1
}

echo 333
echo $gare
say
say  hhh
echo 4444
echo $gare

# 有參數的自訂函數
function add()
{
a=$1
b=$2
add=$((a+b))
echo $add
}

add 8 9
