#!/bin/bash

# 接續出現x

[ $# -lt 2 ]  &&  echo "請輸入2個參數!" && exit
    for (( x=$1;x <= $2;x++))
    do
        echo -n "x"
    done
