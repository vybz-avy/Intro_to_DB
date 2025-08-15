-- Select the database
USE $1;

-- Show all columns of the 'books' table
SHOW COLUMNS FROM books;
mysql -u your_username -p -e "SOURCE path/to/task_4.sql" your_database_name
mysql -u your_username -p your_database_name < path/to/task_4.sql
mysql -u your_username -p -e "USE $1; SHOW COLUMNS FROM books;" your_database_name
-- Set the database name (replace 'alx_book_store' with the argument if needed)
USE alx_book_store;

-- Show all columns of the 'books' table
SHOW COLUMNS FROM books;
mysql -u your_username -p -D alx_book_store -e "SHOW COLUMNS FROM books;"
-- Select the database
USE alx_book_store;

-- Get full description of the 'books' table
SHOW COLUMNS FROM books;