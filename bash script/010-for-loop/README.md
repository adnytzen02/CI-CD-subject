## for-loop


### for ((初始值;限制值;累進值))
* 格式
```js
for ((EXP1,EXP2,EXP3))
do
    statements
done
```

* 範例
```js
for ((z=0,z<=10,z=z+1))
do
    echo "$z"
done
```
* 另一種寫法，意思一樣
```js
for ((z=0,z<=,z++))
do
    echo "$z"
done
```

* $(())
$(()) 是把執行結果放入變數
在 ((   )) 中字串會自動被轉成數值
沒宣告 就是 字串處理
