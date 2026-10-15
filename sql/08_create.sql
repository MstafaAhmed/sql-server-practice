/*
Level 8: CREATE

Q1 - Create a database PracticeDB and switch to it with USE.

Q2 - Create a table products:
        product_id:   INT, primary key, IDENTITY(1,1)
        product_name: VARCHAR(100), required
        category:     VARCHAR(50)
        price:        DECIMAL(10,2), CHECK price >= 0
        stock:        INT, DEFAULT 0
        created_date: DATE, DEFAULT GETDATE()

Q3 - Create a table shop_customers:
        customer_id: INT, primary key, IDENTITY(1,1)
        full_name:   VARCHAR(100), required
        city:        VARCHAR(50)
        status:      VARCHAR(20), DEFAULT 'Active'

Q4 - Create a table orders:
        order_id:    INT, primary key, IDENTITY(1,1)
        customer_id: INT, foreign key to shop_customers
        product_id:  INT, foreign key to products
        quantity:    INT, CHECK quantity > 0

Note: this orders table lives in PracticeDB and is separate from the
      sample-database orders table used in Levels 1-7.
*/

--_______________________________________________________________________
-- Q1 - Create a database PracticeDB and switch to it with USE.
IF DB_ID('PracticeDB') IS NULL
    CREATE DATABASE PracticeDB;
GO

USE PracticeDB;
GO

--_______________________________________________________________________
-- Q2 - Create the products table.
CREATE TABLE products (
    product_id   INT           PRIMARY KEY IDENTITY(1,1),
    product_name VARCHAR(100)  NOT NULL,
    category     VARCHAR(50),
    price        DECIMAL(10,2) CHECK (price >= 0),
    stock        INT           DEFAULT 0,
    created_date DATE          DEFAULT GETDATE()
);
GO

--_______________________________________________________________________
-- Q3 - Create the shop_customers table.
CREATE TABLE shop_customers (
    customer_id INT          PRIMARY KEY IDENTITY(1,1),
    full_name   VARCHAR(100) NOT NULL,
    city        VARCHAR(50),
    status      VARCHAR(20)  DEFAULT 'Active'
);
GO

--_______________________________________________________________________
-- Q4 - Create the orders table with two foreign keys.
CREATE TABLE orders (
    order_id    INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT FOREIGN KEY REFERENCES shop_customers(customer_id),
    product_id  INT FOREIGN KEY REFERENCES products(product_id),
    quantity    INT CHECK (quantity > 0)
);
GO
