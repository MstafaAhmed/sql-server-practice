/*
Level 3: ORDER BY
Q1 - Retrieve all customers sorted by score from highest to lowest.
Q2 - Retrieve all customers sorted by country (A to Z), then by score (highest first) within each country.
Q3 - Retrieve all orders sorted by sales from highest to lowest.
Q4 - Retrieve the customers with a score above 0, sorted by first_name alphabetically. (4 rows)
*/

--_____________________________________________________________________
-- Q1 - Retrieve all customers sorted by score from highest to lowest.
SELECT *
FROM customers
ORDER BY score DESC;

--_____________________________________________________________________
-- Q2 - Retrieve all customers sorted by country (A to Z),
--      then by score (highest first) within each country.
SELECT *
FROM customers
ORDER BY country ASC, score DESC;

--_____________________________________________________________________
-- Q3 - Retrieve all orders sorted by sales from highest to lowest.
SELECT *
FROM orders
ORDER BY sales DESC;

--_____________________________________________________________________
-- Q4 - Retrieve the customers with a score above 0,
--      sorted by first_name alphabetically. (4 rows)
SELECT *
FROM customers
WHERE score > 0
ORDER BY first_name ASC;
