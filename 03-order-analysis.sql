-- ============================================
-- NORTHWIND SQL PRACTICE
-- Level 3: Order Analysis
-- Topics: COUNT, DISTINCT, GROUP BY, HAVING,
-- BETWEEN, ORDER BY, LIMIT, AVG, and NULL checks
-- ============================================


-- 1) Calculate the total number of orders in the orders table.
SELECT COUNT(*) 
FROM orders;

-- 2) Calculate the number of different countries where orders were shipped.
SELECT COUNT(DISTINCT ship_country)
FROM orders;

-- 3) Calculate the number of orders shipped to each country.
SELECT ship_country,
COUNT(order_id) AS order_count
FROM orders
GROUP BY ship_country;

-- 4) Find the 5 countries with the highest number of shipped orders.
SELECT ship_country,
COUNT(order_id) AS order_count
FROM orders
GROUP BY ship_country
ORDER BY order_count DESC
LIMIT 5;

-- 5) List the orders with a freight cost between 50 and 100.
--    Sort the results from the highest freight cost to the lowest.
SELECT order_id, freight 
FROM orders
WHERE freight BETWEEN 50 AND 100
ORDER BY freight DESC;

-- 6) Calculate the average freight cost for each country.
SELECT ship_country,
ROUND(AVG(freight):: numeric,2) AS average_cost
FROM orders 
GROUP BY ship_country;

-- 7) List the countries whose average freight cost is greater than 50.
SELECT ship_country,
ROUND(AVG(freight):: numeric,2) AS average_cost
FROM orders 
GROUP BY ship_country
HAVING AVG(freight)>50;

-- 8) List the orders placed during the year 1997.
SELECT order_id, order_date
FROM orders
WHERE order_date BETWEEN '1997-01-01' AND '1997-12-31';

-- 9) Calculate the total number of orders placed during the year 1997.
SELECT COUNT(*)
FROM orders
WHERE order_date BETWEEN '1997-01-01' AND '1997-12-31';

-- 10) Calculate the number of orders whose shipped_date is not null.
SELECT COUNT(*)
FROM orders
WHERE shipped_date is not null;