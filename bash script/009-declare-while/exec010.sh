#!/bin/bash

# declare -i no後；no設為文字

unset no
declare -i no
no=10
[ $no -eq 0 ] && echo "no 為零" || echo "no 非零"
echo 
no=0
[ $no -eq 0 ] && echo "no 為零" || echo "no 非零"
echo
no="word"
[ $no -eq 0 ] && echo "no 為零" || echo "no 非零"
echo


