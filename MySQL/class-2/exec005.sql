/*Constraints - CHECK*/
CREATE TABLE Persons4 (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=15)
);

INSERT INTO Persons4 (ID, LastName, FirstName, Age) VALUES (1,'A','a',18);
INSERT INTO Persons4 (ID, LastName, FirstName, Age) VALUES (2,'B','b',15);

INSERT INTO Persons4 (ID, LastName, FirstName, Age) VALUES (3,'C','c',14);
/*約束被定義為檢查 Age 列的值是否大於等於15，不滿足約束條件，因此無法插入到表中。*/

/* 與 DESCRIBE Persons4 一樣*/
SHOW CREATE TABLE Persons4;

/*修改 Table Orders OrderNumber 欄位，限制訂單金額不能小於 10 元。*/
ALTER TABLE Orders
ADD CONSTRAINT check_OrderAmount CHECK (OrderNumber >= 10);

/*檢查 Orders 表的結構，確認修改已經生效。*/
DESCRIBE Orders;

/*嘗試新增一筆可以寫入及一筆無法寫入的資料。*/
INSERT INTO Orders (OrderID, OrderNumber, PersonID)
VALUES(2, 15, 2);

INSERT INTO Orders (OrderID, OrderNumber, PersonID)
VALUES(3, 5, 3);
/*因為 OrderNumber 的值為 5，不符合 check_OrderAmount 約束的條件，將會失敗。*/