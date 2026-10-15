/*
Level 9: INSERT

Fills the PracticeDB tables created in Level 8.
Run 08_create.sql first. Identity columns (product_id, customer_id, order_id)
are generated automatically, so they are not listed in the INSERT statements.
*/

USE PracticeDB;
GO

--_______________________________________________________________________
-- products (8 rows) - parent table, so it is filled first
INSERT INTO products (product_name, category, stock) VALUES
('Laptop',   'Electronics', 15),
('Mouse',    'Electronics', 100),
('Keyboard', 'Electronics', 60),
('Desk',     'Furniture',   10),
('Chair',    'Furniture',   0),
('Notebook', 'Stationery',  500),
('Pen',      'Stationery',  0),
('Monitor',  'Electronics', 8);

--_______________________________________________________________________
-- shop_customers (5 rows) - parent table
INSERT INTO shop_customers (full_name, city, status) VALUES
('Ali',  'Cairo',      'Active'),
('Mona', 'Giza',       'Active'),
('Omar', 'Cairo',      'Inactive'),
('Nada', 'Alexandria', 'Inactive'),
('Sara', 'Giza',       'Active');

--_______________________________________________________________________
-- orders (4 rows) - child table, references both parents
INSERT INTO orders (customer_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(5, 8, 1);
GO

--_______________________________________________________________________
-- Quick check
SELECT * FROM products;
SELECT * FROM shop_customers;
SELECT * FROM orders;
