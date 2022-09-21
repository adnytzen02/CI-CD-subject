#! /bin/bash
echo "begin"
declare -i sum
 for ((no=1;no<=10;no=no+1))
do
   sum=$((sum+no))
done
echo "sum 1到 $no減一>總和為$sum"

'''
有declare - i 宣告
能直接輸入
sum=sum+no

$(()) 是把執行結果放入變數
在 ((   )) 中字串會自動被轉成數值
sum=$(($sum+no))
沒宣告 就是 字串處理

由 i=1 開始到 i<= 100 ，
每次 i 都加一來執行底下的程式段（就是 s=s+i ），
當 i >100 （也就是 i=101 ）就跳出這一段程式段
'''