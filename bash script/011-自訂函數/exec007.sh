#!/bin/bash

'''
2個數字
選擇做哪一種運算
'''

function add()
{
#a=$1
#b=$2
result=$(($1+$2))
}

function sub()
{
result=$(($1-$2))
}

function multi()
{
result=$(($1*$2))
}

function div()
{
a=$1
b=$2
result=$((a/b))
}

read -p "please enter first digit:" a
read -p "please enter second digit:" b
echo 'choose one
1.add
2.sub
3.multi
4.div
'
read -p "what do you want to do?(1/2/3/4)" var

case "$var" in
1)
add $a $b
echo "add:$result"
;;
2)
sub  $a $b
echo "sub:$result"
;;
3)
multi  $a $b
echo "multi:$result"
;;
4)
div  $a $b
echo "div:$result"
;;
*)
echo "error"
;;
esac
