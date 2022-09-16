#!/bin/bash
memoryinfo=$(free -mh |grep "Mem:"|fmt -u | cut -d " " -f 2)
echo  $memoryinfo
read -p "按任意鍵繼續"
