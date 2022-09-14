#!/bin/bash


'''
-a	（and）
-o	（or）
&& 代表 AND ；
|| 代表 or ；
'''

test1(){

read -p "do you love me ?" ans
[ "${ans,,}" = "y" ] && echo "i love you too"
[ "${ans,,}" = "n" ] &&  echo "i hate you"
}

test2(){

read -p "do you love me ?" ans
[ "$ans" = "y" -o "$ans" = "Y" ] && echo "i love you too"
[ "$ans" = "n" -o "$ans" = "N" ] &&  echo "i hate you"
}



# 改為 if then if
test3(){

read -p "do you love me ?" ans
if [ "${ans,,}" = "y" ] ; then
 echo "i love you too"
fi
if [ "${ans,,}" = "n" ] ; then
  echo "i hate you"
fi
}

test4(){

read -p "do you love me ?" ans
if [ "$ans" = "y" -o "$ans" = "Y" ]  ; then
 echo "i love you too"
fi
if [ "$ans" = "n" -o "$ans" = "N" ] ; then
 echo "i hate you"
fi
}
# else
test5(){

read -p "do you love me ?" ans
if [ "${ans,,}" = "y" ]
then
 echo "i love you too"
else
  echo "i hate you"
fi
}

test6(){
    
echo "Do you love me?(y/n)?"
read ans
if [ "$ans" = "y" ] || [ "$ans" = "Y" ] ;then
   echo "I love you too!"
else
   echo “I hate you”
fi
echo "End"
}


