/*
Level 4: GROUP BY (with aggregate functions)

Q1 - Calculate the total sales of all orders. (1 row)
Q2 - Count how many customers there are in each country. (3 rows)
Q3 - Calculate the average score for each country. (3 rows)
Q4 - Calculate the total score for each country, sorted from highest to lowest. (3 rows)
Q5 - Find the highest score in each country. (3 rows)
Q6 - Calculate the total sales for each customer_id in orders. (4 rows)
*/

--________________________________________________________________
-- Q1 - Calculate the total sales of all orders. (1 row)
SELECT SUM(sales) AS total_sales
FROM orders;

--________________________________________________________________
-- Q2 - Count how many customers there are in each country. (3 rows)
SELECT
    country,
    COUNT(id) AS total_customers
FROM customers
GROUP BY country
ORDER BY total_customers ASC;

--________________________________________________________________
-- Q3 - Calculate the average score for each country. (3 rows)
SELECT
    country,
    AVG(score) AS average_score
FROM customers
GROUP BY country
ORDER BY average_score ASC;

--________________________________________________________________
-- Q4 - Calculate the total score for each country,
--      sorted from highest to lowest. (3 rows)
SELECT
    country,
    SUM(score) AS total_score
FROM customers
GROUP BY country
ORDER BY total_score DESC;

--________________________________________________________________
-- Q5 - Find the highest score in each country. (3 rows)
SELECT
    country,
    MAX(score) AS max_score
FROM customers
GROUP BY country
ORDER BY max_score ASC;

--________________________________________________________________
-- Q6 - Calculate the total sales for each customer_id in orders. (4 rows)
SELECT
    customer_id,
    SUM(sales) AS total_sales
FROM orders
GROUP BY customer_id;
