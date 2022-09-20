#!/bin/bash

# 累加開始值與結束值之間的奇數

# read 寫法
read -p "star?" star
read -p  "end?" end

no=$star
sum=0 

while (( no <= $end ))
do

  if [ $((no%2)) -eq 1 ]  # 取餘數 等於 1
  then
    sum=$((sum+no))
    no=$((no+1))
  else
    no=$((no+1))
  fi

done

echo $sum


# 參數寫法

start=$1
end=$2
sum=0
while (( $start <= $end ))
do

  if [ $((start%2)) -eq 1 ]
  then
    sum=$((sum+no))
    start=$((start+1))
  else
    start=$((start+1))
  fi
done
echo $sum
