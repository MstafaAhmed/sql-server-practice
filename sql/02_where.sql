/*
Level 2: WHERE
Q1 - Retrieve all customers from Germany. (2 rows)
Q2 - Retrieve all customers with a score greater than 500. (2 rows)
Q3 - Retrieve all customers whose score is not equal to 0. (4 rows)
Q4 - Retrieve all orders with sales of 20 or more. (2 rows)
Q5 - Retrieve all customers from the USA who have a score greater than 0. (1 row)
Q6 - Retrieve all customers from Germany or the UK. (3 rows)
Q7 - Retrieve all orders placed after 2021-05-01. (2 rows)
Q8 - Retrieve the customer whose first_name is Georg. (1 row)
*/

--_____________________________________________
-- Q1 - Retrieve all customers from Germany. (2 rows)
SELECT *
FROM customers
WHERE country = 'Germany';

--_____________________________________________
-- Q2 - Retrieve all customers with a score greater than 500. (2 rows)
SELECT *
FROM customers
WHERE score > 500;

--_____________________________________________
-- Q3 - Retrieve all customers whose score is not equal to 0. (4 rows)
SELECT *
FROM customers
WHERE score <> 0;

--_____________________________________________
-- Q4 - Retrieve all orders with sales of 20 or more. (2 rows)
SELECT *
FROM orders
WHERE sales >= 20;

--_____________________________________________
-- Q5 - Retrieve all customers from the USA who have a score greater than 0. (1 row)
SELECT *
FROM customers
WHERE country = 'USA'
  AND score > 0;

--_____________________________________________
-- Q6 - Retrieve all customers from Germany or the UK. (3 rows)
SELECT *
FROM customers
WHERE country = 'UK'
   OR country = 'Germany'
ORDER BY country ASC;

--_____________________________________________
-- Q7 - Retrieve all orders placed after 2021-05-01. (2 rows)
SELECT *
FROM orders
WHERE order_date > '2021-05-01';

--_____________________________________________
-- Q8 - Retrieve the customer whose first_name is Georg. (1 row)
SELECT *
FROM customers
WHERE first_name = 'Georg';
