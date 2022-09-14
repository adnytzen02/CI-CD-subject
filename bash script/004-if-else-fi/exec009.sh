#! /bin/bash

'''
請使用者輸入 分數
分數 大於等於 60  
出現 pass
否則出現 no pass
'''
test1(){
read  -p  "no?"  ans
if  [ ${ans}  -le  60 ] ;then
echo  "no pass"
fi
}

test2(){
read  -p  "no?"  ans
if  [ ${ans}  -le  60 ] ;then
echo  "no pass"
else
echo "pass"
fi
}

test3(){
read  -p  "no?"  ans
if  [ ${ans}  -le  60 ] ;then
echo  "no pass"
elif   [ ${ans}  -le  90 ] ; then
   echo  "grade  B"
else
echo "grade  A"
fi
}

test4(){
read  -p  "no?"  ans
if  [ ${ans}  -le  60 ] ;then
echo  "no pass"
elif   [ ${ans}  -le  80 ] ; then
   echo  "grade  B"
elif   [ ${ans}   -le  90 ] ; then
    echo  "grade B plus"
else
echo "grade  A"
fi
}