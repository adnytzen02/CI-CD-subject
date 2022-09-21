#! /bin/bash

# read
寫法
read  -p "起始值 ?" start
read -p "$start 累計到多少?" end
sum=0
 for ((no=${start};no<=${end};no=no+1))
do
   sum=$((sum+no))
done
echo "sum $start 到 $end  總和為$sum"

# 參數寫法
# 要考慮未填寫參數

echo "begin"
 [ $# -lt 2 ] && echo "要給2個值" && exit # "$#" 傳遞有多少個值
star=$1
end=$2
sum=0
for ((no=${start};no<=${end};no=no+1))
do
   sum=$((sum+no))
done
echo "sum $start 到 $end  總和為$sum"

# 另外的寫法
echo "begin"
 [ $# -lt 2 ] && echo "要給2個值" && exit
sum=0
for ((no=$1;no<=$2;no=no+1))
do
   sum=$((sum+no))
done
echo "sum $1 到 $2  總和為$sum"
