#!/bin/bash


# 第一種寫法
function sayfun
{
echo testfun
}

echo 111
sayfun
echo 222


# 第二種寫法
function sayfun { echo testfun ; }

echo 111
sayfun
echo 222

# 第三種寫法
function sayfun
{ echo testfun ;
}

echo 111
sayfun
echo 222

# 第四種寫法
function sayfun()
{
echo testfun

}

echo 111
sayfun
echo 222

# 第五種寫法
# 有()  function可以省略
sayfun()
{
echo testfun
}

echo 111
sayfun
echo 222