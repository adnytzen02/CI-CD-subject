#!/bin/bash

# 告知每個 IP 有通沒通

no=1
#while [ $no -lt 10 ]
while (( no <=10 ))
do
ping -c 3 -w 1 192.168.1.$no  &>/dev/null
if [ $? = 0 ]
then
   echo '192.168.1.'$no  "通"

else
    echo '192.168.1.'$no  "不通"
fi
no=$((no+1))
done
