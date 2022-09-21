#!/bin/bash

'''
命名hd函數；
功能為將硬碟容量放hdinfo變數
命名memory函數；
功能為將記憶體容量放memoryinfo變數
命名cpu函數；
功能為將CPU資訊放cpuinfo變數
'''

# 在 Alpine執行fmt命令
# 需要先安裝coreutils
# apk add coreutils

cpu()
{
cpuinfo=$(cat /proc/cpuinfo|grep "model name"|head -n 1|cut -d ":" -f 2)
}

memory()
{
memoryinfo=$(free -mh |grep "Mem:"|fmt -u | cut -d " " -f 2)
}

hd()
{
hdinfo=$( df -h |grep "dev/sda2"|fmt -u|cut -d " " -f 2)
}

cpu
memory
hd
echo "處理機資訊:"$cpuinfo
echo "記憶體大小:"$memoryinfo
echo "硬碟大小:"$hdinfo
