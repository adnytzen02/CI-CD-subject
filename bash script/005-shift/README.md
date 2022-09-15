## $ myscript opt1 opt2 opt3 
| myscript | opt1 | opt2 | opt3 |
| :----: | :----: | :----: | :----: |
| $0 | $1 | $2 | $3 |
| script 的檔名 | opt1 亦即是第一個附加的參數 | opt2 | opt3 |
* 特殊符號
| $# | 程式名後面的總共有多少個參數 |
| ---- | ---- |
| $@ | 將所有的參數全部都輸出 |



## shift

* 命令“ shift 1 ”和“ shift ”（不帶參數）執行相同的操作。
    * 如果將參數移至數字小於1的位置，則該參數“下降”，其值將被丟棄。
    * 命令shift始終丟棄$ 1的先前值，而shift 2始終丟棄$ 1和$ 2的先前值。

```js
if [ $# -lt 1 ]
then
  echo "Usage: $0 file ..."
  exit 1
fi
===
while [ "$*" != ""  ]
do


shift
done
```

```js
#!/bin/bash
# using shift
echo "First parameter: $1"
echo "Second parameter: $2"
echo "Third parameter: $3"
echo
echo "The total number of parameters: $#"
echo "All of the parameters: $*"
echo; echo
# shift the parameters
shift
echo "First parameter: $1"
echo "Second parameter: $2"
echo
echo "The total number of parameters: $#"
echo "All of the parameters: $*"
```

## 變數=$(cat 檔案)

* 例:
```js
#!/bin/bash
pw=$(cat word)
read  -p "password?" ans
if [ "$ans" = "$pw" ]
then
  echo "pass"
else
  echo "not correct"
fi

```

