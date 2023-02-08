/*建立名為 class 的資料庫*/
CREATE DATABASE class;

/*使用 class database 建立叫做 t1 的 tbale，
要有 id ，name
*/
USE class;
CREATE TABLE t1(
    id INT,
    name VARCHAR(100)
);

/*閱讀 table 屬性*/
DESCRIBE t1;

/*新增資料*/
INSERT INTO t1 (id, name)  VALUES(1, '丁某');  

INSERT INTO t1 VALUES(2, '姚某');

INSERT INTO t1 VALUES(3, '柯某');

INSERT INTO t1 (id)  VALUES(2);

/*查詢所有內容*/
SELECT * FROM t1;

/*刪除 table*/
DROP TABLE t1;

