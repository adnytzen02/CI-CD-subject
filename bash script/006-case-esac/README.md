## case-esac 格式

* case 格式 
```js
case  $變數名稱 in
  "<第一個變數內容>")
	程式段
	;; 
"<第二個變數內容>")
	程式段
	;;
     *) 
	<不包含第一個變數內容與第二個變數內容的其他程式執行段>
	exit 1
	;;
esac  
```

* case 變化
```js
read  變數名稱 
case  $變數名稱  in
  "變數內容")
	程式段
	   ;; 
  "變數內容")
	程式段
	   ;;
 "變數內容")
	程式段
	   ;;
                    *) 
	其他程式執行段
	exit 1
	  ;;
esac  
```

## exit命令
* 在shell腳本中 終止當前腳本執行

* 語法
```js
exit(參數)
參數
返回值：指定shell返回值。
0代表執行成功，其他值代表執行失敗。

在腳本中，進入腳本所在目錄，否則退出：
```
```js
cd $(dirname $0) || exit 1
```

## Text--Endtext
* 類似 txt-endtxt
    * echo -e "
    
	多列項目
    "
```js
clear
echo -e "
        選單
1-增加
2-刪除
3-修改
4-查詢
"
echo "請選擇1,2,3,4"
```

