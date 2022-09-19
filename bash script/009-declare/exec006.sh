#!/bin/bash

'''
詢問開始值放start變數；詢問結束值放end變數
ping 127.0.0.開始值-127.0.0.結束值
'''
# read
read -p "start?"  start
read -p "end?"   end
no=$start
while (( no <= end ))
do
    echo 192.168.1.$no
    no=$((no+1))
done


# 變數
start=$1
end=$2
while ((start <= end))
do
    echo 192.168.1.$start
    start=$((start+1))
done


