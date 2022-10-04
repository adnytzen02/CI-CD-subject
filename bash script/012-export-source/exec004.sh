#!/bin/bash

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

