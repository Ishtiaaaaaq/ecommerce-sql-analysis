USE ecommerce_analysis;

-- ============================================================
-- E-COMMERCE SQL ANALYSIS
-- 03 - AGGREGATE ANALYSIS
-- ============================================================


-- Q1. Find the total number of customers

SELECT COUNT(*) AS total_customers
FROM Customers;


-- Q2. Find the total number of products

SELECT COUNT(*) AS total_products
FROM Products;


-- Q3. Find the average price of all products

SELECT ROUND(AVG(price), 2) AS average_product_price
FROM Products;


-- Q4. Find the cheapest and most expensive product price

SELECT
    MIN(price) AS cheapest_price,
    MAX(price) AS most_expensive_price
FROM Products;


-- Q5. Find the total quantity of products currently in stock

SELECT SUM(stock_quantity) AS total_stock
FROM Products;


-- Q6. Find the number of customers in each state

SELECT
    state,
    COUNT(*) AS total_customers
FROM Customers
GROUP BY state
ORDER BY total_customers DESC;


-- Q7. Find the number of products in each category

SELECT
    category_id,
    COUNT(*) AS total_products
FROM Products
GROUP BY category_id
ORDER BY total_products DESC;


-- Q8. Find the number of orders for each order status

SELECT
    order_status,
    COUNT(*) AS total_orders
FROM Orders
GROUP BY order_status
ORDER BY total_orders DESC;


-- Q9. Find the average product price in each category

SELECT
    category_id,
    ROUND(AVG(price), 2) AS average_price
FROM Products
GROUP BY category_id
ORDER BY average_price DESC;


-- Q10. Find categories that contain more than 2 products

SELECT
    category_id,
    COUNT(*) AS total_products
FROM Products
GROUP BY category_id
HAVING COUNT(*) > 2
ORDER BY total_products DESC;
