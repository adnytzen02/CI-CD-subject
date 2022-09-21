#!/bin/bash
echo "Beihu Linux 17.03"
m=$(free -mh | grep Mem:)
echo -n "Memory : "
echo $m  |cut -d' ' -f2
cn=$(cat /proc/cpuinfo | grep 'model name' | head -n 1 | cut -d ':' -f2)
echo -n "CPU : "
echo $cn
m=$(df -h | grep /dev/sda)
echo -n "Disk : "
echo $m | cut -d ' ' -f2
