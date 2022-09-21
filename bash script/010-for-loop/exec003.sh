#! /bin/bash

'''
加總1到N的程式(N問使用者)
將從1加到N 加總的結果 顯示
'''

# read 寫法
echo "begin"
read -p "1累計到多少?" end
sum=0
 for ((no=1;no<=${end};no=no+1))
do
   sum=$((sum+no))
done
echo "sum 1到-$end  總和為$sum"


# 參數寫法
# 參數寫法要考慮沒給參數

echo "begin"
[ $# -lt 1 ] && echo "需要給1個值" && exit # "$#" 傳遞有多少個值
end=$1
Sum=0
# for ((no=1;no<=${end};no=no+1))
for ((no=1;no<=$1;no=no+1))
do
   sum=$((sum+no))
done
echo "sum 1到$end  總和為$sum"
