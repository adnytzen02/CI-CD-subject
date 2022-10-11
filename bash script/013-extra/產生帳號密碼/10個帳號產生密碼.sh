#!/bin/bash
for ((no=1;no<=10;no=no+1))
do
    account=$no
    sudo  passwd   ${account}
done
