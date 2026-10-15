/*
Level 1: SELECT & FROM
Q1 - Retrieve all columns from the customers table. (5 rows)
Q2 - Retrieve only first_name and country from customers. (5 rows)
Q3 - Retrieve only order_id and sales from orders. (4 rows)
*/

-- ___________________________________________________________
-- Q1 - Retrieve all columns from the customers table. (5 rows)
SELECT *
FROM customers;

-- ___________________________________________________________
-- Q2 - Retrieve only first_name and country from customers. (5 rows)
SELECT first_name, country
FROM customers;

-- ___________________________________________________________
-- Q3 - Retrieve only order_id and sales from orders. (4 rows)
SELECT order_id, sales
FROM orders;
