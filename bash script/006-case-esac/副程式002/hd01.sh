#!/bin/bash
hdinfo=$( df -h |grep "dev/sda2"|fmt -u|cut -d " " -f 2)
echo  $hdinfo
read -p "按任意鍵繼續"
