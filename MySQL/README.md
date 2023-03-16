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
* NOT NULL - 確保該欄位不能為 NULL 值。
* UNIQUE - 確保該欄位的所有值都是唯一的。
* PRIMARY KEY - 結合了 NOT NULL 和 UNIQUE，可以唯一識別表中的每一行資料。
  * 分辨 Table Constraint 是 NOT NULL + UNIQUE 還是 Primary Key ?
  * 答案：使用 DESCRIBE 命令。
* FOREIGN KEY - 防止摧毀表格之間連結的動作。
* CHECK - 確保該欄位的值滿足特定的條件。
* DEFAULT - 如果未指定值，則為欄位設置默認值。
  * 有 Default Constraint 還可以新增欄位是 NULL 的資料嗎？
  * 答案是 YES。  可以新增欄位是 NULL 的資料，即使有 Default Constraint，只要在 INSERT INTO 語句中明確地指定要插入 NULL 值即可。
* CREATE INDEX - 用於快速創建和檢索數據庫中的數據。
  * 選擇唯一性索引: 唯一性索引的值是唯一的，可以更快速的透過該索引來ˊ找尋資料。
  * 經常需要排序、分組和操作的欄位建立索引: 排序會浪費很多時間。如果建立索引，可以有效地避免排序操作。
  * 索引不要建立過多: 索引的數目不是越多越好。每個索引都需要佔用空間，索引越多，需要的空間就越大。
  * 索引的欄位儘量不要有「NULL」值。
  * 最左前綴匹配原則: 最具識別性的欄位放在鍵的左邊。
  * 雖然某個欄位很常使用在 WHERE、 ORDER BY 或 GROUP BY 子句中，也不一定要建立索引。例如性別欄位的值只有兩種(F , M)，建立索引所增加的效率也不多。

