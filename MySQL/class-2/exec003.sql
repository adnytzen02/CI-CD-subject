/*Constraints - PRIMARY KEY*/
CREATE TABLE Persons3 (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

DESCRIBE Persons3;

INSERT INTO Persons3
       (ID, LastName, FirstName, Age) 
   VALUES (1,'A','a',18);

INSERT INTO Persons3 
       (ID, LastName, FirstName, Age) 
   VALUES (2,'B','b',18);

INSERT INTO Persons3 
       (ID, LastName, FirstName, Age) 
   VALUES (2,'C','c',18);

/*修改 Table Persons2 Age 欄位加上 UNIQUE Constrain。*/
ALTER TABLE Persons2 ADD UNIQUE INDEX (Age);

/*嘗試新增一筆可以寫入及一筆無法寫入的資料。*/
INSERT INTO Persons2 (ID, LastName, FirstName, Age) VALUES (3, 'C', 'c', 20);
INSERT INTO Persons2 (ID, LastName, FirstName, Age) VALUES (4, 'D', 'd', 20);
