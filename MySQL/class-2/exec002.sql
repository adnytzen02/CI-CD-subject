CREATE TABLE Persons2 (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    UNIQUE (ID)
);

DESCRIBE Persons2;

INSERT INTO Persons2 
       (ID, LastName, FirstName, Age) 
   VALUES (1,'A','a',18);

/*ID 欄位被設置為唯一鍵，ID 值已經在上一筆記錄中被使用了，因此這筆記錄插入會失敗。*/
INSERT INTO Persons2 
       (ID, LastName, FirstName, Age) 
   VALUES (1,'B','b',19);

INSERT INTO Persons2 
       (ID, LastName, FirstName, Age) 
   VALUES (2,'B','b',19);

