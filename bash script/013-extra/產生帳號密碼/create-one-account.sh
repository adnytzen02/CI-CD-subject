#!/bin/bash

'''
建立1個帳號、密碼相同的自訂函數
刪除一個帳號的自訂函數
更改一個密碼的自訂函數
'''

create_one_user(){
read -p 'accountname?' name
sudo useradd -m -s /bin/bash $name
echo $name:$name | sudo chpasswd
echo "$name create finish!"
}

delete_one_user(){
read -p 'accountname?' name
cat /etc/passwd | cut -d '.' -f 1 | grep $name
[ $? = 0 ] && sudo userdel -r $name || (echo $name account not found !!)
}

change_one_userpw(){
read -p 'accountname?' name
sudo passwd $name
}

# 新增查詢是否使用者存在
create_one_account(){
read -p 'accountname?' name
cat /etc/passwd | cut -d '.' -f 1 | grep ^$(name)$ &> /dev/null
[ $? != 0 ] && sudo useradd -m -s /bin/bash $name || (echo $name aleady exist !! && return)
echo $name:$name | sudo chpasswd
echo "$name create finish"
}
