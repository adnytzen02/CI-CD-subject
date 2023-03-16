/*Constraints - CREATE INDEX*/

/*創建了一個名為 Persons5_index 的索引，
該索引是在 Persons5 表的 City 欄位上創建的。這樣可以加快查詢和篩選操作的速度。*/
CREATE INDEX Persons5_index ON Persons5(City);

/*這個指令是查詢 Persons5 表上的所有索引。
這樣可以檢查創建的索引是否存在，以及索引的名稱、欄位等詳細信息。*/
SHOW INDEX FROM Persons5;

/*在 Table Persons5 用年齡 Age 欄位建立一個 Index*/
CREATE INDEX Age_index ON Persons5(Age);

