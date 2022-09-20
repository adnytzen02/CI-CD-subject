## Declare 宣告變數為整數


### 宣告變數內容
* 語法
```js
declare [-afirx] 
```

* 參數說明
| -a | 定義為陣列 array |
| ---- | ---- |
| -f | 定義為函數 function  |
| -i | 定義為整數 integer |
| -r | 定義為『唯讀』 |
| -x | 定義為透過環境輸出變數 |

* 範例
```js
declare -i a=3
declare -i b=5
declare -i c=$a*$b
echo $c
```

* 變數未給值：
    * 值皆為"空字串"
* 宣告過整數的變數：
     * 給文字內容，其值為0


## Linux 重要資料處理命令
| {} | 針對字串做置換、擷取處理、正規化 |
| ---- | ---- |
| [] | 條件式處理 |
| () | 代表收納命令處理後的字串 |
| (()) | 第二個括號代表運算處理 |

#### 補充
* Regular expressions 正則表達式
    * $()
    * $(())
    * ${array[]}


* 成立條件
    * 成立 && 成立 || X
    ```js
    ((3>2)) && echo "bb" || echo "cc"
    ```
    * 不成立 && X || 成立
    ```js
    ((3<2)) && echo "bb" || echo "cc"
    ```
    * 成立 && 成立 && 成立
    ```js
    echo "aa" && echo "bb" || echo "cc"
    ```
    ```js
    echo "aa" && echo "bb" && echo "cc"
    ```



