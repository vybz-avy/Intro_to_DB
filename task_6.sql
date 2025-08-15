-- Switch to the specified database
USE ${1};

-- Insert multiple rows into the 'customer' table
INSERT INTO customer (customer_id, customer_name, email, address) VALUES
(2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),
(3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness Ave.'),
(4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness Ave.');
mysql -u your_username -p -e "SOURCE path/to/task_6.sql" your_database_name
mysql -u your_username -p -D your_database_name < path/to/task_6.sql