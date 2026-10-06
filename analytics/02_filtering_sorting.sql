USE ecommerce_analysis;

-- ============================================================
-- E-COMMERCE SQL ANALYSIS
-- 02 - FILTERING & SORTING
-- ============================================================


-- Q1. Find all products with a price greater than ₹5,000

SELECT product_name, price
FROM Products
WHERE price > 5000;

-- Q3. Find products whose price is between ₹1,000 and ₹5,000

SELECT product_name, price
FROM Products
WHERE price BETWEEN 1000 AND 5000;


-- Q4. Find customers who are from Telangana

SELECT first_name, last_name, city, state
FROM Customers
WHERE state = 'Telangana';


-- Q5. Find customers who are from either Telangana or Maharashtra

SELECT first_name, last_name, city, state
FROM Customers
WHERE state IN ('Telangana', 'Maharashtra');


-- Q6. Find products whose name contains the word "Book"

SELECT product_name, price
FROM Products
WHERE product_name LIKE '%Book%';


-- Q7. Find products that have less than 50 items in stock

SELECT product_name, stock_quantity
FROM Products
WHERE stock_quantity < 50;


-- Q8. Find products that cost more than ₹1,000
-- and have more than 50 items in stock

SELECT product_name, price, stock_quantity
FROM Products
WHERE price > 1000
  AND stock_quantity > 50;


-- Q9. Display all products from the most expensive
-- to the cheapest

SELECT product_name, price
FROM Products
ORDER BY price DESC;


-- Q10. Display the 5 cheapest products

SELECT product_name, price
FROM Products
ORDER BY price ASC
LIMIT 5;
