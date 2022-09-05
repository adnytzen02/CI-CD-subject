#!/bin/bash

DB_NAME="inventory.db"

create() {
  sqlite3 ${DB_NAME} <<EOF
CREATE TABLE inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    isbn TEXT NOT NULL,
    quantity INTEGER NOT NULL
);
EOF
}

create
