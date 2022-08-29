#!/bin/bash

DB_NAME="inventory.db"

create() {
  sqlite3 ${DB_NAME} <<EOF
CREATE TABLE inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    isbn TEXT NOT NULL,
    quantity INTEGER NOT NULL
);
INSERT INTO inventory(isbn,quantity) VALUES ("1492090719", "17");
INSERT INTO inventory(isbn,quantity) VALUES ("9865024918", "11");
INSERT INTO inventory(isbn,quantity) VALUES ("1492092304", "16");
INSERT INTO inventory(isbn,quantity) VALUES ("9864760785", "10");
INSERT INTO inventory(isbn,quantity) VALUES ("9865028042", "12");
EOF
}

rmdb() {
  rm ${DB_NAME}
}

case "${1}" in
  create)
    create
    ;;
  rm)
    rmdb
    ;;
  *)
    if [ -n "${1}" ]; then
      sqlite3 ${DB_NAME} "${1}"
    fi
    ;;
esac
