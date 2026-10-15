/*
Level 7: Filtering tools

Q1 - List the unique countries in customers. (3 rows)
Q2 - Retrieve the top 2 customers by score. (2 rows)
Q3 - Retrieve customers with a score between 400 and 800. (2 rows)
Q4 - Retrieve customers from Germany or the UK, using IN. (3 rows)
Q5 - Retrieve customers whose first_name starts with M. (2 rows)
Q6 - Retrieve customers whose first_name ends with n. (2 rows)
Q7 - Retrieve customers who are from the USA or the UK and have a score of 750 or more.
     Use parentheses carefully. (2 rows)
Q8 - Retrieve customers whose first_name is longer than 5 characters. (1 row)

Note: the first_name column contains hidden leading spaces, so Q5, Q6 and Q8
      clean the value with TRIM() (requires SQL Server 2017 or later).
*/

--____________________________________________________________________________
-- Q1 - List the unique countries in customers. (3 rows)
SELECT DISTINCT country
FROM customers;

--____________________________________________________________________________
-- Q2 - Retrieve the top 2 customers by score. (2 rows)
SELECT TOP 2 *
FROM customers
ORDER BY score DESC;

--____________________________________________________________________________
-- Q3 - Retrieve customers with a score between 400 and 800. (2 rows)
SELECT *
FROM customers
WHERE score BETWEEN 400 AND 800;

--____________________________________________________________________________
-- Q4 - Retrieve customers from Germany or the UK, using IN. (3 rows)
SELECT *
FROM customers
WHERE country IN ('UK', 'Germany');

--____________________________________________________________________________
-- Q5 - Retrieve customers whose first_name starts with M. (2 rows)
SELECT *
FROM customers
WHERE TRIM(first_name) LIKE 'M%';

--____________________________________________________________________________
-- Q6 - Retrieve customers whose first_name ends with n. (2 rows)
SELECT *
FROM customers
WHERE TRIM(first_name) LIKE '%n';

--____________________________________________________________________________
-- Q7 - Retrieve customers who are from the USA or the UK and have a score of 750 or more.
--      Parentheses make sure OR is evaluated before AND. (2 rows)
SELECT *
FROM customers
WHERE (country = 'UK' OR country = 'USA')
  AND score >= 750;

--____________________________________________________________________________
-- Q8 - Retrieve customers whose first_name is longer than 5 characters. (1 row)
SELECT *
FROM customers
WHERE LEN(TRIM(first_name)) > 5;
