-- ============================================
-- NORTHWIND SQL PRACTICE
-- Level 1: Basic Queries
-- Topics: SELECT, WHERE, DISTINCT, ORDER BY,
-- LIMIT, COUNT, BETWEEN, IN, and LIKE
-- ============================================


-- 1) How many customers are there in the customers table?
SELECT COUNT(*) AS total_customers
FROM customers;

-- 2) How many different countries do the customers come from?
SELECT COUNT(DISTINCT country) AS country_count
FROM customers;

-- 3) List the countries where customers are located in alphabetical order.
--    Each country should appear only once.
SELECT DISTINCT country FROM customers
ORDER BY country;

-- 4) List the 10 most expensive products in the products table.
SELECT product_name, unit_price
FROM products
ORDER BY unit_price DESC
LIMIT 10;

-- 5) List the products with a price between 20 and 50,
--    sorted from the highest price to the lowest.
SELECT product_name, unit_price
FROM products
WHERE unit_price BETWEEN 20 AND 50
ORDER BY unit_price DESC;

-- 6) List the products with fewer than 20 units in stock.
SELECT product_name, units_in_stock
FROM products
WHERE units_in_stock<20
ORDER BY units_in_stock;

-- 7) Calculate the number of products that are out of stock.
SELECT COUNT(*) FROM products
WHERE units_in_stock=0;

-- 8) List the products whose name contains the word "Chef".
SELECT * FROM products
WHERE product_name LIKE '%Chef%';

-- 9) List the customers located in Germany, France, or Spain.
SELECT * FROM customers
WHERE country IN ('Germany', 'France', 'Spain');

-- 10) List the customers whose contact title is "Owner",
--     sorted alphabetically by company name.
SELECT * FROM customers
WHERE contact_title='Owner'
ORDER BY company_name;

