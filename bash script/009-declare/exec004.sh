#!/bin/bash
# counts from 1 to 10
declare -i count=1
#while (( count <= 10 ))
while [ "$count" -le 10 ]
do
    echo "Count is: $count"
#       ((count+=1))
#count=$((count+1))
#count=count+1
    count+=1
done
exit


# 1 - 100 奇數相加
no=1
sum=0

while (( no <= 10 ))
do

  if [ $((no%2)) -eq 1 ]
  then
    sum=$((sum+no))
    no=$((no+1))
  else
    no=$((no+1))
  fi

done

echo $sum

# 2-100 偶數相加
no=1
sum=0

while (( no <= 10 ))
do

  if [ $((no%2)) -eq 0 ]
  then
    sum=$((sum+no))
    no=$((no+1))
  else
    no=$((no+1))
  fi

done

echo $sum
