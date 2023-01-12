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

DESCRIBE t1;