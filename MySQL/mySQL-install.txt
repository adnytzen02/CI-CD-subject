#!/bin/bash

# Alpine 安裝 mySQL
sudo apk add mysql mysql-client

# Ubuntu 安裝 mySQL
sudo apt-get install mysql mysql-client

# mariadb 活動狀態
sudo rc-service mariadb status
* status: stopped

# 修改 mariadb-server.cnf
sudo nano /etc/my.cnf.d/mariadb-server.cnf
[mysqld]
#skip-networking
[galera]
bind-address=0.0.0.0

# 啟動 mariadb
sudo rc-service mariadb start
...
* ERROR: mariadb failed to start

sudo /etc/init.d/mariadb setup
* Creating a new MySQL database

# 啟用 mysql
sudo mysql
ERROR 2002 (HY000):...

# 再次啟動 mariadb
sudo rc-service mariadb start
* starting mariadb

# 啟用 mysql
sudo mysql
Welcome to the Mariadb monitor...
...
MariaDB[(none)]>exit

# 檢查 .sock檔案存在
ls -al /run/mysqld/mysqld.sock

# 設定開機啟動

# 設定 mariadb 開機啟動
sudo rc-update add mariadb default
* service mariadb added to runlevel default

rc-update show default |grep mariadb

mariadb | default

# 重新開機
sudo reboot

# 檢查 mariadb 活動狀態
sudo rc-service mariadb status

sudo rc-status

Runlevel: default
 cgroups                             [  started  ]
 sshd                                [  started  ]
 mariadb                             [  started  ]
 crond                               [  started  ]
 acpid                               [  started  ]
 chronyd                             [  started  ]
 local

# 設定 mysql 
sudo mysql_secure_installation

..........
Enter current password for root (enter for none): Enter
..........
Switch to unix_socket authentication [Y/n] y
..........
Change the root password? [Y/n] y
New password:root
Re-enter new password:root

Remove anonymous users? [Y/n] y
........
Disallow root login remotely? [Y/n] y
........
Remove test database and access to it? [Y/n] y
.......
Reload privilege tables now? [Y/n] y
Thanks for using MariaDB!

# 登入 MySQL
mysql -u root -p

Enter password:root
Welcome to the MariaDB monitor. Commands end with;pr\g.
Your MariaDB connection id is 28
...

> select current_user();
+---------------------+
| current_user()   |
+---------------------+
| root@localhost  |
+---------------------+
1 row in set (0.000 sec)

> exit

# 登入 MySQL-Socket
mysql -u root -S /run/mysqld/mysqld.sock
ERROR 1698 (28000): Access denied for user 'root'@'localhost'

sudo mysql -u root -S /run/mysqld/mysqld.sock
等同於
sudo mysql

# 新增 bigred(username) 帳號可以從遠端登入
> GRANT ALL PRIVILEGES ON *.* TO 'bigred'@'%' IDENTIFIED BY 'bigred' WITH GRANT OPTION;
> FLUSH PRIVILEGES;
* Query OK,0 rows affected

> SELECT user,host FROM mysqld.user;

# SQL Command 測試
> CREATE DATABASE test;
> SHOW DATABASES;

> USE test;
> DROP DATABASE test;
