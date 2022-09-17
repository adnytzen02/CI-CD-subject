#!/bin/bash

# 用set --變數寫法

arg="one two three four"
set -- $arg
echo   $1
echo   $2
echo   $3
echo   $4


