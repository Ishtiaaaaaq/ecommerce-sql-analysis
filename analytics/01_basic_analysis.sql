USE ecommerce_analysis;

-- ============================================================
-- E-COMMERCE SQL ANALYSIS
-- 01 - BASIC ANALYSIS
-- ============================================================


-- Q1. Display all customers
SELECT *
FROM Customers;


-- Q2. Display all products
SELECT *
FROM Products;


-- Q3. Display all orders
SELECT *
FROM Orders;


-- Q4. Display all product categories
SELECT *
FROM Categories;


-- Q5. Display all order items
SELECT *
FROM Order_Items;


-- Q6. Find the total number of customers
SELECT COUNT(*) AS total_customers
FROM Customers;


-- Q7. Find the total number of products
SELECT COUNT(*) AS total_products
FROM Products;


-- Q8. Find the total number of categories
SELECT COUNT(*) AS total_categories
FROM Categories;


-- Q9. Find the total number of orders
SELECT COUNT(*) AS total_orders
FROM Orders;


-- Q10. Find the total number of order items
SELECT COUNT(*) AS total_order_items
FROM Order_Items;


-- Q11. Display all unique cities where customers are located
SELECT DISTINCT city
FROM Customers;


-- Q12. Display all unique states where customers are located
SELECT DISTINCT state
FROM Customers;


-- Q13. Display all unique order statuses
SELECT DISTINCT order_status
FROM Orders;


-- Q14. Display all unique product prices
SELECT DISTINCT price
FROM Products;


-- Q15. Display all customer first names
SELECT first_name
FROM Customers;


-- Q16. Display all product names
SELECT product_name
FROM Products;


-- Q17. Display all category names
SELECT category_name
FROM Categories;


-- Q18. Display all available product prices
SELECT price
FROM Products;


-- Q19. Display customer names and their cities
SELECT first_name, last_name, city
FROM Customers;


-- Q20. Display product names and their prices
SELECT product_name, price
FROM Products;
