#!/bin/bash

'''
使用^和$來強制正則表達式分別僅在行的開頭或結尾進行匹配
顯示目錄；顯示檔案
'''

ls -lah | grep  ^d | head -2

ls -alh | grep ^- |head -2