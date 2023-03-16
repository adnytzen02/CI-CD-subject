/*Constraints - FOREIGN KEY*/
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons1(ID)
);

DESCRIBE Persons1;

/*
出現這個錯誤訊息:
嘗試建立一個包含外部鍵的表格時，外部鍵參考的欄位資料型態或屬性未完全匹配或不存在。
外部鍵約束是用來建立關聯資料表之間的關係，因此必須確保參考的欄位資料型態和屬性完全一致。
*/

/*正確的TABLE*/
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons2(ID)
);

DESCRIBE Orders;

INSERT INTO Orders (OrderID, OrderNumber, PersonID)
   VALUES(1,2000,1);

/*刪除 TABLE Person2*/
DROP TABLE Person2;
