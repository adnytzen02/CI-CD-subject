## 區域變數

程式內變數 **各自獨立**   
不往上，也不往下傳   
**export** 只宣告變數往下傳

#### export
將自定義變數設定為系統環境變數 (當前shell中有效)
* export 語法
    * export [-fnp][變數名稱]=[變數設定值]

| 參數 |  |
| ---- | ---- |
| -f | 代表[變數名稱]中為函式名稱 |
| -n | 刪除指定的變數。變數實際上並未刪除，只是不會輸出到後續指令的執行環境中。 |
| -p | 列出所有的shell賦予程式的環境變數。 |


在shell中執行程式時，shell會提供一組環境變數。   
export可新增，修改或刪除環境變數，供後續執行的程式使用。   
export的效力僅及於該此登陸操作。

在shell中輸入export可以輸出當前的變數。
```js
export PATH=$PATH:/.../bin
```

執行一行指令碼時，開一個新的子shell，繼承父shell中的環境變數，   
但是在子shell中定義的變數，無法被帶回父shell中。

| 系統環境 | 使用者環境 |
| :---: | :---: |
| /etc/environment | /etc/profile |
| 設定整個系統的環境 | 設定所有使用者的環境 |
| 前者與登入使用者無關 | 後者與登入使用者有關 |

如果同一個變數在使用者環境(/etc/profile)、系統環境(/etc/environment)有不同的值，以使用者環境為準。

#### source

在當前bash環境下讀取並執行 FileName 中的命令，使環境變數生效。   
該命令可用命令 "." 來替代。
```js
source ~/.bash_profile
```

* source a.sh
    * 當前 shell 內去讀取、執行 a.sh，而 a.sh 不需要有"執行許可權" (不用 chmod +x a.sh)
    * source 命令可以簡寫為 "."
    * . a.sh
    * 中間是有空格的


* source方式運行script
    * 讓script在當前process內執行， 而不是產生一個child process來執行。
    * 所有執行結果均於當前process內完成。
    * 若script的環境有所改變， 當然也會改變當前process環境。
