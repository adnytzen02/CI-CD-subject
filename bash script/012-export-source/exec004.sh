#!/bin/bash

[ "$USER" != "root" ] && echo "need root to run" && exit 1
source hong.conf
echo "project name:" $PROJECT_NAME
echo "Project user:" $PROJECT_USER_NAME
echo $PROJECT_DIR

'''
chmod +x exec004.sh
./exec004.sh
sudo ./exec004.sh
'''
