#!/bin/bash

# 操作

ls -lha /etc/passwd

sleep 3

grep $USER /etc/passwd

sleep 3

grep $USER /etc/passwd /etc/group

cat /etc/passwd | grep "root"
cat /etc/passwd | grep "$USER"
cat /etc/passwd | grep $USER
echo $?
cat /etc/passwd | grep abc
echo $?

