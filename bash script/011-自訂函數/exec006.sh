#!/bin/bash
add()
{
result=$(($1+$2))
}

sub()
{
result=$(($1-$2))
}

multi()
{
result=$(($1*$2))
}

div()
{
result=$(($1/$2))
}

add 40 50
echo $result
sub  400 100
echo $result
multi  10  200
echo $result
div  1000 50
echo $result