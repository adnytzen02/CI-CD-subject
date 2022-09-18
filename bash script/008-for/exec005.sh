#!/bin/bash


'''
使用檔案變數
'''
arg=$(cat txt001.txt)
for var in $arg
do
    echo $var
done

