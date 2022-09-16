#!/bin/bash
cpuinfo=$(cat /proc/cpuinfo|grep "model name"|head -n 1|cut -d ":" -f 2)
echo  $cpuinfo
read -p "按任意鍵繼續“
