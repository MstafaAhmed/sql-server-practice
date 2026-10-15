/*
Level 6: Combined challenges

Q1 - Exclude customers with a score of 0.
     Then calculate the total score per country,
     keep only countries with a total above 800,
     and sort the result from highest to lowest. (2 rows)

Q2 - From orders, take only orders with sales greater than 10.
     Calculate total sales per customer_id, keep only totals of 20 or more,
     and sort from highest to lowest. (2 rows)

Q3 - Find the countries that have an average score above 400 and
     at least 2 customers, sorted by average score descending. (2 rows)
*/

--___________________________________________________________________________
-- Q1 - WHERE -> GROUP BY -> HAVING -> ORDER BY
SELECT
    country,
    SUM(score) AS total_score
FROM customers
WHERE score <> 0
GROUP BY country
HAVING SUM(score) > 800
ORDER BY total_score DESC;

--___________________________________________________________________________
-- Q2 - Filter rows first (WHERE), then filter groups (HAVING)
SELECT
    customer_id,
    SUM(sales) AS total_sales
FROM orders
WHERE sales > 10
GROUP BY customer_id
HAVING SUM(sales) >= 20
ORDER BY total_sales DESC;

--___________________________________________________________________________
-- Q3 - Two conditions on the groups in HAVING
SELECT
    country,
    AVG(score) AS average_score
FROM customers
GROUP BY country
HAVING COUNT(id) >= 2
   AND AVG(score) > 400
ORDER BY average_score DESC;
