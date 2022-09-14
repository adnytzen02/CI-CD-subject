#!/bin/bash

'''
變數內容變更-全變大、小寫-刪除文字、數字
'''

pw="123asdQWE_@"
pw1=${pw//[a-z]/}
pw2=${pw//[!a-z]/}
pw3=${pw//[A-Z]/}
pw4=${pw//[!A-Z]/}
pw5=${pw//[!A-Z0-9]/}
pw6=${pw//[!A-Z0-9a-z]/}
echo $pw, $pw1, $pw2, $pw3, $pw4, $pw5, $pw6
