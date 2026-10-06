USE ecommerce_analysis;

-- ============================================================
-- E-COMMERCE SQL ANALYSIS
-- 04 - CUSTOMER ANALYSIS
-- ============================================================


-- Q1. Display each customer along with the number of orders
-- they have placed

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, customer_name
ORDER BY total_orders DESC;


-- Q2. Find customers who have placed more than one order

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, customer_name
HAVING COUNT(o.order_id) > 1
ORDER BY total_orders DESC;


-- Q3. Find customers who have placed exactly one order

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, customer_name
HAVING COUNT(o.order_id) = 1;


-- Q4. Find customers who have never placed an order

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


-- Q5. Find the total spending of each customer
-- excluding cancelled orders

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
JOIN Order_Items oi
    ON o.order_id = oi.order_id
WHERE o.order_status != 'Cancelled'
GROUP BY c.customer_id, customer_name
ORDER BY total_spent DESC;


-- Q6. Find the top 5 customers based on total spending

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
JOIN Order_Items oi
    ON o.order_id = oi.order_id
WHERE o.order_status != 'Cancelled'
GROUP BY c.customer_id, customer_name
ORDER BY total_spent DESC
LIMIT 5;


-- Q7. Find the number of customers in each city

SELECT
    city,
    COUNT(*) AS total_customers
FROM Customers
GROUP BY city
ORDER BY total_customers DESC;


-- Q8. Find the number of customers in each state

SELECT
    state,
    COUNT(*) AS total_customers
FROM Customers
GROUP BY state
ORDER BY total_customers DESC;


-- Q9. Find the average spending of customers
-- who have placed at least one non-cancelled order

SELECT
    ROUND(AVG(total_spent), 2) AS average_customer_spending
FROM (
    SELECT
        c.customer_id,
        SUM(oi.quantity * oi.unit_price) AS total_spent
    FROM Customers c
    JOIN Orders o
        ON c.customer_id = o.customer_id
    JOIN Order_Items oi
        ON o.order_id = oi.order_id
    WHERE o.order_status != 'Cancelled'
    GROUP BY c.customer_id
) AS CustomerSpending;


-- Q10. Find customers whose total spending is greater than ₹50,000

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
JOIN Order_Items oi
    ON o.order_id = oi.order_id
WHERE o.order_status != 'Cancelled'
GROUP BY c.customer_id, customer_name
HAVING SUM(oi.quantity * oi.unit_price) > 50000
ORDER BY total_spent DESC;
