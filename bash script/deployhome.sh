#!/bin/bash

# variable
cpuinfo=$(cat /proc/cpuinfo|grep "model name"|head -n 1|cut -d ":" -f 2)
cpucore=$(cat /proc/cpuinfo|grep "model name"|cut -d ":" -f 2)
hdall=$(df -h |grep "dev/sda2"|fmt -u|cut -d " " -f 2)
memoryinfo=$(free -mh |grep "Mem:"|fmt -u | cut -d " " -f 2)

# program

case $1 in
# cpu資訊
cpu)
    echo "CPU: ${cpuinfo}"
;;
# cpu核心
cpucore)
    echo ${cpucore}
;;
# 硬碟總容量
hdall)
    echo "Disk: ${hdall}"
;;
# 硬碟資訊
dfre)
    df -h
;;
# 記憶體容量
meminfo)
    echo "Memory: ${memoryinfo}"
;;




