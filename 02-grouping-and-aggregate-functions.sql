-- ============================================
-- NORTHWIND SQL PRACTICE
-- Level 2: Grouping and Aggregate Functions
-- Topics: GROUP BY, HAVING, COUNT, SUM, AVG,
-- MIN, MAX, ORDER BY, and LIMIT
-- ============================================


-- 1) Calculate the number of customers in each country.
--     Sort the results from the highest customer count to the lowest.
--     Expected result structure:
--     country | customer_count
SELECT country,
COUNT(*) AS customer_count
FROM customers
GROUP BY country 
ORDER BY customer_count DESC;

-- 2) Find the 5 countries with the highest number of customers.
SELECT country,
COUNT(*) AS customer_count
FROM customers
GROUP BY country
ORDER BY customer_count DESC
LIMIT 5;

-- 3) Calculate the following values from the products table in a single query:
--     - Minimum product price
--     - Maximum product price
--     - Average product price

SELECT 
MIN(unit_price) AS MinPrice,
MAX(unit_price) AS MaxPrice,
ROUND(AVG(unit_price)) AS AveragePrice
FROM products;

-- 4) Calculate the number of products for each category_id.
SELECT category_id,
COUNT(*) AS product_count
FROM products
GROUP BY category_id;

-- 5) Calculate the average product price for each category.
--     Sort the results from the highest average price to the lowest.
SELECT category_id,
AVG(unit_price) AS average_price
FROM products
GROUP BY category_id
ORDER BY average_price DESC;

-- 6) List the categories whose average product price is greater than 30.
--     Use GROUP BY and HAVING in this query.
SELECT category_id,
AVG(unit_price) AS average_price
FROM products
GROUP BY category_id
HAVING AVG(unit_price)>30;

-- 7) Calculate the total number of units in stock for each supplier_id.
SELECT supplier_id,
SUM(units_in_stock) AS total_stock_units
FROM products
GROUP BY supplier_id;

-- 8) List the suppliers whose total number of units in stock is greater than 100.
SELECT supplier_id,
SUM(units_in_stock) AS total_stock_units
FROM products
GROUP BY supplier_id
HAVING SUM(units_in_stock)>100;