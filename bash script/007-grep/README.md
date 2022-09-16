## grep 命令

```js
grep  -參數   '字串'  要尋找的來源檔案
```
* 在檔中搜索一個單詞(分大小寫)，命令會返回一個包含“match_pattern”的文本行
* 在多個檔中查找：
```js
grep "match_pattern" <file_1>  <file_2>  <file_3> ...
```



grep：強大文件字串搜尋工具
$ grep '找這個字串' file_name
找所有目錄（含子目錄）下檔案
$ grep -r '字串' *
>>>
grep命令常見用法
在檔中搜索一個單詞，命令會返回一個包含“match_pattern”的文本行
在多個檔中查找：
grep "match_pattern" file_1 file_2 file_3 ...
搜索多個檔並查找匹配文本在哪些檔中：
grep -l "text" file1 file2 file3...


>>>
grep：用關鍵字找尋檔案
grep -參數 '字串' 要尋找的來源檔案
數字：列出找到字串的檔案名稱和字串前後幾行的內容
A 數字：列出找到字串的檔案名稱和字串後幾行的內容
B 數字：列出找到字串的檔案名稱和字串前幾行的內容
c：顯示找到該字串的個數，不會顯示檔案內容
h：不會顯示檔名，只會顯示內容
i：忽略大小寫
L：只顯示檔名一次
m：只找尋字串完全相同者
>>>>
grep命令
檔過濾分割與合併
grep（global search regular expression(RE) and print out the line，全面搜索規則運算式並把行列印出來）是一種強大的文本搜索工具，它能使用規則運算式搜索文本，並把匹配的行列印出來。
選項
-a 不要忽略二進位資料。-A<顯示列數> 除了顯示符合範本樣式的那一行之外，並顯示該行之後的內容。
-b 在顯示符合範本樣式的那一行之外，並顯示該行之前的內容。-c 計算符合範本樣式的列數。
-C<顯示列數>或-<顯示列數>  除了顯示符合範本樣式的那一列之外，並顯示該列之前後的內容。
-d<進行動作> 當指定要查找的是目錄而非檔時，必須使用這項參數，否則grep命令將回報資訊並停止動作。
-e<範本樣式> 指定字串作為查找檔內容的範本樣式。-E 將範本樣式為延伸的普通標記法來使用，意味著使用能使用擴展規則運算式。
-f<範本文件> 指定範本檔，其內容有一個或多個範本樣式，讓grep查找符合範本條件的檔內容，格式為每一列的範本樣式。
-F 將範本樣式視為固定字串的清單。
-G 將範本樣式視為普通的標記法來使用。
-h 在顯示符合範本樣式的那一列之前，不標示該列所屬的檔案名稱。
-H 在顯示符合範本樣式的那一列之前，標示該列的檔案名稱。-i 忽略字元大小寫的差別。
-l 列出檔內容符合指定的範本樣式的檔案名稱。-L 列出檔內容不符合指定的範本樣式的檔案名稱。
-n 在顯示符合範本樣式的那一列之前，標示出該列的編號。
-q 不顯示任何資訊。
-R/-r 此參數的效果和指定“-d recurse”參數相同。
-s 不顯示錯誤資訊。
-v 反轉查找。
-w 只顯示全字符合的列。
-x 只顯示全列符合的列。
-y 此參數效果跟“-i”相同。
-o 只輸出檔中匹配到的部分。
grep命令常見用法
在檔中搜索一個單詞，命令會返回一個包含“match_pattern”的文本行：
grep match_pattern file_namegrep "match_pattern" file_name
在多個檔中查找：
grep "match_pattern" file_1 file_2 file_3 ...
輸出除之外的所有行 -v 選項：
grep -v "match_pattern" file_name
標記匹配顏色 --color=auto 選項：
grep "match_pattern" file_name --color=auto
使用規則運算式 -E 選項：
grep -E "[1-9]+"或egrep "[1-9]+"
只輸出檔中匹配到的部分 -o 選項：
echo this is a test line. | grep -o -E "[a-z]+\."line. echo this is a test line. | egrep -o "[a-z]+\."line.
統計檔或者文本中包含匹配字串的行數 -c 選項：
grep -c "text" file_name
輸出包含匹配字串的行數 -n 選項：
grep "text" -n file_name
或cat file_name | grep "text" -n #多個檔grep "text" -n file_1 file_2
列印樣式匹配所位於的字元或位元組偏移：
echo gun is not unix | grep -b -o "not"7:not #一行中字串的字元便宜是從該行的第一個字元開始計算，起始值為0。選項 -b -o 一般總是配合使用。
搜索多個檔並查找匹配文本在哪些檔中：
grep -l "text" file1 file2 file3...
grep遞迴搜索文件
在多級目錄中對文本進行遞迴搜索：
grep "text" . -r -n# .表示目前的目錄。
忽略匹配樣式中的字元大小寫：
echo "hello world" | grep -i "HELLO"hello
選項 -e 制動多個匹配樣式：
echo this is a text line | grep -e "is" -e "line" -oisline #也可以使用-f選項來匹配多個樣式，在樣式檔中逐行寫出需要匹配的字元。cat patfileaaabbb echo aaa bbb ccc ddd eee | grep -f patfile -o
在grep搜索結果中包括或者排除指定檔：
#只在目錄中所有的.php和.html檔中遞迴搜索字元"main()"grep "main()" . -r --include *.{php,html} #在搜索結果中排除所有README文件grep "main()" . -r --exclude "README" #在搜索結果中排除filelist文件列表裡的文件grep "main()" . -r --exclude-from filelist
使用0值位元組尾碼的grep與xargs：
#測試檔：echo "aaa" > file1echo "bbb" > file2echo "aaa" > file3 grep "aaa" file* -lZ | xargs -0 rm #執行後會刪除file1和file3，grep輸出用-Z選項來指定以0值位元組作為終結符檔案名（\0），xargs -0 讀取輸入並用0值位元組終結符分隔檔案名，然後刪除匹配檔，-Z通常和-l結合使用。
grep靜默輸出：
grep -q "test" filename #不會輸出任何資訊，如果命令運行成功返回0，失敗則返回非0值。一般用於條件測試。
列印出匹配文本之前或者之後的行：
#顯示匹配某個結果之後的3行，使用 -A 選項：seq 10 | grep "5" -A 35678 #顯示匹配某個結果之前的3行，使用 -B 選項：seq 10 | grep "5" -B 32345 #顯示匹配某個結果的前三行和後三行，使用 -C 選項：seq 10 | grep "5" -C 32345678 #如果匹配結果有多個，會用“--”作為各匹配結果之間的分隔符號：echo -e "a\nb\nc\na\nb\nc" | grep a -A 1ab--ab
 

