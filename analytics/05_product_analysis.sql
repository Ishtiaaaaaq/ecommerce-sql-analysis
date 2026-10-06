USE ecommerce_analysis;

-- ============================================================
-- E-COMMERCE SQL ANALYSIS
-- 05 - PRODUCT ANALYSIS
-- ============================================================


-- Q1. Display all products with their category names

SELECT
    p.product_id,
    p.product_name,
    c.category_name,
    p.price,
    p.stock_quantity
FROM Products p
JOIN Categories c
    ON p.category_id = c.category_id
ORDER BY p.product_id;


-- Q2. Find the best-selling products based on quantity sold
-- Excluding cancelled orders

SELECT
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM Products p
JOIN Order_Items oi
    ON p.product_id = oi.product_id
JOIN Orders o
    ON oi.order_id = o.order_id
WHERE o.order_status != 'Cancelled'
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC;


-- Q3. Find the top 5 products based on quantity sold

SELECT
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM Products p
JOIN Order_Items oi
    ON p.product_id = oi.product_id
JOIN Orders o
    ON oi.order_id = o.order_id
WHERE o.order_status != 'Cancelled'
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;


-- Q4. Find the products generating the highest revenue

SELECT
    p.product_id,
    p.product_name,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM Products p
JOIN Order_Items oi
    ON p.product_id = oi.product_id
JOIN Orders o
    ON oi.order_id = o.order_id
WHERE o.order_status != 'Cancelled'
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC;


-- Q5. Find the top 5 products based on revenue

SELECT
    p.product_id,
    p.product_name,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM Products p
JOIN Order_Items oi
    ON p.product_id = oi.product_id
JOIN Orders o
    ON oi.order_id = o.order_id
WHERE o.order_status != 'Cancelled'
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC
LIMIT 5;


-- Q6. Find products that have never been ordered

SELECT
    p.product_id,
    p.product_name,
    p.price,
    p.stock_quantity
FROM Products p
LEFT JOIN Order_Items oi
    ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;


-- Q7. Find products with stock below 50

SELECT
    product_id,
    product_name,
    stock_quantity
FROM Products
WHERE stock_quantity < 50
ORDER BY stock_quantity ASC;


-- Q8. Find products with stock greater than 70

SELECT
    product_id,
    product_name,
    stock_quantity
FROM Products
WHERE stock_quantity > 70
ORDER BY stock_quantity DESC;


-- Q9. Find the total quantity sold for each product
-- along with its current stock

SELECT
    p.product_id,
    p.product_name,
    p.stock_quantity,
    COALESCE(SUM(
        CASE
            WHEN o.order_status != 'Cancelled'
            THEN oi.quantity
            ELSE 0
        END
    ), 0) AS total_quantity_sold
FROM Products p
LEFT JOIN Order_Items oi
    ON p.product_id = oi.product_id
LEFT JOIN Orders o
    ON oi.order_id = o.order_id
GROUP BY
    p.product_id,
    p.product_name,
    p.stock_quantity
ORDER BY total_quantity_sold DESC;


-- Q10. Find the average selling price of products
-- in each category

SELECT
    c.category_name,
    ROUND(AVG(p.price), 2) AS average_product_price
FROM Categories c
JOIN Products p
    ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name
ORDER BY average_product_price DESC;
