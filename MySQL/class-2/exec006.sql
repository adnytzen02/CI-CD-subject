/*Constraints - DEFAULT*/
CREATE TABLE Persons5 (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Taiwan'
);

DESCRIBE Persons5;

INSERT INTO Persons5
       (ID, LastName, FirstName, Age) 
   VALUES (1,'A','a',18);

INSERT INTO Persons5
       (ID, LastName, FirstName, Age, City) 
   VALUES (2,'B','b',18,'China');

SELECT * FROM Persons5;

/*有 Default Constraint 還可以新增欄位是 NULL 的資料嗎？*/
/*答案是 YES。
可以新增欄位是 NULL 的資料，即使有 Default Constraint，
只要在 INSERT INTO 語句中明確地指定要插入 NULL 值即可。
*/

INSERT INTO Persons5 (ID, LastName, FirstName, Age, City)
VALUES (3, 'C', 'c', NULL, NULL);

/*這個插入語句會成功，因為你明確地指定了 Age 和 City 欄位的值為 NULL，而這是合法的。*/

SELECT * FROM Persons5;