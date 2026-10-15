/*
Level 5: HAVING

Q1 - Find the countries that have more than 1 customer. (2 rows)
Q2 - Find the countries whose average score is greater than 430. (2 rows)
Q3 - Find the customer_id values in orders whose total sales are greater than 15. (2 rows)
*/

--________________________________________________________________________
-- Q1 - Find the countries that have more than 1 customer. (2 rows)
SELECT
    country,
    COUNT(id) AS total_customers
FROM customers
GROUP BY country
HAVING COUNT(id) > 1;

--________________________________________________________________________
-- Q2 - Find the countries whose average score is greater than 430. (2 rows)
SELECT
    country,
    AVG(score) AS average_score
FROM customers
GROUP BY country
HAVING AVG(score) > 430;

--________________________________________________________________________
-- Q3 - Find the customer_id values in orders whose total sales are greater than 15. (2 rows)
SELECT
    customer_id,
    SUM(sales) AS total_sales
FROM orders
GROUP BY customer_id
HAVING SUM(sales) > 15;
