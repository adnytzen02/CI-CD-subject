#!/bin/bash
read -p  "請輸入使用者名稱:" -t 20 username #等待20秒
echo $username
read -p "請輸入密碼:" -s password #輸入密碼時不顯示
echo $password
read -p "請確認[y/n]" -n 1 cho  #輸入一個字元的時候就執行
echo -e '\n'  # 輸出換行符
echo $cho
