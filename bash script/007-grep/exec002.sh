#!/bin/bash

# 用 uname.txt 內檔案內容去比對

# grep –f  檔案  被找的檔  
grep -f uname /etc/passwd

cat uname.txt

# -c (幾列;筆數)
# -c , -count 計算出符合，搜尋 keyword 的行數
grep -c -f uname /etc/passwd

