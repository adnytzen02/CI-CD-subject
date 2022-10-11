#!/bin/bash

# 字元大寫轉小寫
echo "HELLO WORLD"
echo "HELLO WORLD" | tr 'A-Z' 'a-z'

# 刪除
# tr -d ''指-d''把空白字元除掉:
echo "111 222333"
echo "111 222333"|tr -d""

# 使用tr刪除字元
echo "hello 123 world 456"
echo "hello 123 world 456" | tr -d '0-9'
