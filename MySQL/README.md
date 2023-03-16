### 資料庫 Database

1. 資料庫是為了提高系統效率，相較於傳統用檔案方式儲存資料。   
2. 用更短的存取時間與反應時間、有效降低資料處理成本 (Minimum Cost)。   
3. 可以供給多人同時使用、快速反應企業組織的各項需求。   

|   | 查詢效率 |人力成本|時間成本|維護成本|空間成本|多人共用|資料不遺失| 
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|紙本作業|低|高|高|高|高|不行|不行|
|檔案儲存|中|高|中|中|低|不行|定期備份|
|資料庫儲存|高|低|低|低|低|可以|可以|   


### SQL

 - SQL (Structured Query Language) : 結構化查詢語言。
 - 用於管理 關聯式資料庫管理系統 (Relational Database Management System, RDBMS)。
 - SQL Command 有通用的標準 : ANSI SQL standard。
 - 遵循 ANSI SQL 的語法標準創作出來，分為三大 SQL 族群 :
   * T-SQL
   * PL/SQL
   * SQL PL


|SQL|語法四大類別|
| --- | --- |
|DDL| 定義資料庫的資料類型|
|DQL|查詢資料的語法|
|DML|操作資料的語法|
|DCL|資料的權限/規則|

###  Constraints 限制、約束
NOT NULL - 確保該欄位不能為 NULL 值
UNIQUE - 確保該欄位的所有值都是唯一的
PRIMARY KEY - 結合了 NOT NULL 和 UNIQUE，可以唯一識別表中的每一行資料
FOREIGN KEY - 防止摧毀表格之間連結的動作
CHECK - 確保該欄位的值滿足特定的條件
DEFAULT - 如果未指定值，則為欄位設置默認值
CREATE INDEX - 用於快速創建和檢索數據庫中的數據