CREATE TABLE Persons1 (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

DESCRIBE Persons1;

/*測試是否能接受 null 值*/
INSERT INTO Persons1 
       (ID, LastName, FirstName, Age) 
   VALUES (1,null,null,18);

INSERT INTO Persons1 
      (ID, LastName, FirstName, Age) 
   VALUES (1,'A','a',18);

INSERT INTO Persons1 
        (ID, LastName, FirstName, Age) 
VALUES (2,'B','b',null);

/*修改 Table Persons1 Age 欄位加上 NOT NULL Constrain。*/
ALTER TABLE Persons1 MODIFY Age INT NOT NULL;

/*嘗試新增一筆可以寫入及一筆無法寫入的資料。*/
INSERT INTO Persons1 (ID, LastName, FirstName, Age) VALUES (2, 'C', 'c', 20);
INSERT INTO Persons1 (ID, LastName, FirstName, Age) VALUES (3, 'D', 'd', null);

