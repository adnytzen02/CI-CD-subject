/*建立一個 database 名稱 user，並使用*/
CREATE DATABASE user;
USE user;

/*建立一張 table 名稱 s2，s2_id 是 Primary Key*/
CREATE TABLE s2 (
    s2_id INT,
    s2_name VARCHAR,
    s2_birthday DATE,
    PRIMARY KEY (id)
);

/*在 Table s2 新增以下 3 筆資料*/
INSERT INTO s2 VALUES (1, user001, '1989-12-31');
INSERT INTO s2 VALUES (2, user002, '1990-07-03');
INSERT INTO s2 VALUES (3, user003, '1991-01-27');

/*搜尋 Table s2 學號介於 2~4 之間的學生*/
SELECT * FROM s2 WHERE s2_id BETWEEN 2 AND 4;

/*修改 Table s2 s2_id=1 及 s2_id=3 的學生生日為 2002-01-01*/
UPDATE s2 SET s2_birthday = '2002-01-01' WHERE s2_id IN (1, 3);

/*刪除 Table s2 在 2002 年出生的學生*/
DELETE FROM s2 WHERE YEAR(s2_birthday) = 2002;

/*在 Table s2 新增 性別(gender) 欄位，並新增任一筆資料*/
ALTER TABLE s2 ADD COLUMN gender VARCHAR(10);
INSERT INTO s2 VALUES (4,user004,'1992-06-06','male')

/*修改 Table s2 gender data type，限制只能輸入 F 及 M 兩種性別*/
ALTER TABLE s2 ALTER COLUMN gender VARCHAR(1) CHECK (gender IN ('F', 'M'));

