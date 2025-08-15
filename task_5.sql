-- Use the specified database
USE ${1};

-- Insert a single row into the 'customer' table
INSERT INTO customer (customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');
mysql -u your_username -p -e "SOURCE path/to/task_5.sql" your_database_name
mysql -u your_username -p -D your_database_name < path/to/task_5.sql
