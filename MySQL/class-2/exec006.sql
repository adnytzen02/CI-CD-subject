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

