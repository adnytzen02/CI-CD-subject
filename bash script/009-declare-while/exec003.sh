#!/bin/bash

# 1 累加到 3

sum=0
no=1
#while [ $no -lt 4 ]
while (( no <=4 ))
do
    echo $no
    sum=${sum}+${no}
    no=$((no+1))
done
echo ${sum}

# 使用 declare

declare  -i  sum  no
sum=0
no=1
while [ "${no}" -lt 4 ]
do
    echo ${no}
    sum=$(({sum}+${no}))
    no=$((${no}+1))
done
echo  ${sum}

