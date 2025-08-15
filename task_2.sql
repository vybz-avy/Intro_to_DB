-- Select the database to use
USE alx_book_store;

-- Create authors table
CREATE TABLE IF NOT EXISTS authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    bio TEXT,
    birthdate DATE,
    -- Additional constraints for data integrity
    CHECK (name <> '')
);

-- Create books table
CREATE TABLE IF NOT EXISTS books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    genre VARCHAR(100),
    price DECIMAL(10, 2) NOT NULL,
    published_date DATE,
    -- Foreign key constraint linking to authors
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    -- Additional constraints
    CHECK (title <> ''),
    CHECK (price >= 0)
);

-- Create customers table
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(20),
    address TEXT,
    -- Constraints for data quality
    CHECK (first_name <> ''),
    CHECK (last_name <> '')
);

-- Create orders table
CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    -- Foreign key linking to customers
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    -- Constraints
    CHECK (status IN ('Pending', 'Shipped', 'Delivered', 'Cancelled'))
);

-- Create order_details table
CREATE TABLE IF NOT EXISTS order_details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    -- Foreign keys
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    -- Constraints
    CHECK (quantity > 0),
    CHECK (price >= 0)
);