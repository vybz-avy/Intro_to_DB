#!/bin/bash

DB_NAME="your_database_name"
SQL_FILE="task_4.sql"

mysql -N -B -e "SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_KEY, EXTRA, COLUMN_DEFAULT, CHARACTER_MAXIMUM_LENGTH, NUMERIC_PRECISION, NUMERIC_SCALE, COLUMN_COMMENT FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='your_database_name' AND TABLE_NAME='books' ORDER BY ORDINAL_POSITION;" > books_description.txt

if [ -f "$SQL_FILE" ]; then
    echo "File '$SQL_FILE' exists."
else
    echo "File '$SQL_FILE' does not exist."
fi

if [ -s "$SQL_FILE" ]; then
    echo "File '$SQL_FILE' is not empty."
else
    echo "File '$SQL_FILE' is empty."
fi

if grep -iq 'ANALYZE' "$SQL_FILE"; then
    echo "Warning: The file contains the 'ANALYZE' keyword."
else
    echo "The file does NOT contain the 'ANALYZE' keyword."
fi