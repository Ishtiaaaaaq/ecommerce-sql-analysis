INSERT INTO Categories (category_name)
VALUES
('Electronics'),
('Clothing'),
('Books'),
('Home & Kitchen'),
('Sports'),
('Beauty'),
('Toys'),
('Groceries');

SELECT * FROM Categories;

INSERT INTO Customers
(first_name, last_name, email, city, state, registration_date)
VALUES
('Rahul', 'Sharma', 'rahul.sharma@gmail.com', 'Hyderabad', 'Telangana', '2025-01-15'),
('Aisha', 'Khan', 'aisha.khan@gmail.com', 'Mumbai', 'Maharashtra', '2025-02-10'),
('Arjun', 'Reddy', 'arjun.reddy@gmail.com', 'Warangal', 'Telangana', '2025-02-25'),
('Priya', 'Patel', 'priya.patel@gmail.com', 'Ahmedabad', 'Gujarat', '2025-03-05'),
('Aditya', 'Verma', 'aditya.verma@gmail.com', 'Delhi', 'Delhi', '2025-03-18'),
('Sneha', 'Iyer', 'sneha.iyer@gmail.com', 'Chennai', 'Tamil Nadu', '2025-04-12'),
('Mohammed', 'Ali', 'mohammed.ali@gmail.com', 'Bengaluru', 'Karnataka', '2025-04-20'),
('Ananya', 'Singh', 'ananya.singh@gmail.com', 'Pune', 'Maharashtra', '2025-05-02'),
('Rohan', 'Mehta', 'rohan.mehta@gmail.com', 'Jaipur', 'Rajasthan', '2025-05-15'),
('Zoya', 'Ahmed', 'zoya.ahmed@gmail.com', 'Kolkata', 'West Bengal', '2025-06-01'),
('Karan', 'Gupta', 'karan.gupta@gmail.com', 'Lucknow', 'Uttar Pradesh', '2025-06-15'),
('Neha', 'Joshi', 'neha.joshi@gmail.com', 'Bhopal', 'Madhya Pradesh', '2025-07-01'),
('Vikram', 'Nair', 'vikram.nair@gmail.com', 'Kochi', 'Kerala', '2025-07-12'),
('Meera', 'Das', 'meera.das@gmail.com', 'Bhubaneswar', 'Odisha', '2025-08-05'),
('Sahil', 'Kumar', 'sahil.kumar@gmail.com', 'Patna', 'Bihar', '2025-08-20'),
('Ishita', 'Roy', 'ishita.roy@gmail.com', 'Kolkata', 'West Bengal', '2025-09-01'),
('Varun', 'Malhotra', 'varun.malhotra@gmail.com', 'Delhi', 'Delhi', '2025-09-15'),
('Fatima', 'Shaikh', 'fatima.shaikh@gmail.com', 'Pune', 'Maharashtra', '2025-10-01'),
('Dev', 'Shah', 'dev.shah@gmail.com', 'Surat', 'Gujarat', '2025-10-18'),
('Nisha', 'Rao', 'nisha.rao@gmail.com', 'Hyderabad', 'Telangana', '2025-11-01');

INSERT INTO Products
(product_name, category_id, price, stock_quantity)
VALUES
('Laptop', 1, 65000.00, 25),
('Smartphone', 1, 30000.00, 40),
('Wireless Headphones', 1, 2500.00, 80),
('Smart Watch', 1, 5000.00, 50),
('T-Shirt', 2, 799.00, 100),
('Jeans', 2, 1499.00, 70),
('Jacket', 2, 2499.00, 45),
('Python Programming Book', 3, 899.00, 60),
('Database Systems Book', 3, 1200.00, 40),
('SQL Interview Guide', 3, 650.00, 75),
('Mixer Grinder', 4, 3500.00, 30),
('Electric Kettle', 4, 1800.00, 35),
('Cricket Bat', 5, 4500.00, 25),
('Football', 5, 1200.00, 50),
('Yoga Mat', 5, 900.00, 65),
('Face Wash', 6, 450.00, 100),
('Perfume', 6, 2200.00, 45),
('Toy Car', 7, 700.00, 55),
('Building Blocks', 7, 1500.00, 40),
('Coffee', 8, 500.00, 120);

INSERT INTO Orders
(customer_id, order_date, order_status)
VALUES
(1, '2025-01-20', 'Completed'),
(2, '2025-01-25', 'Completed'),
(3, '2025-02-05', 'Completed'),
(4, '2025-02-15', 'Shipped'),
(5, '2025-02-20', 'Completed'),
(1, '2025-03-02', 'Completed'),
(6, '2025-03-10', 'Completed'),
(7, '2025-03-18', 'Cancelled'),
(8, '2025-03-25', 'Completed'),
(9, '2025-04-05', 'Completed'),
(10, '2025-04-12', 'Shipped'),
(2, '2025-04-20', 'Completed'),
(11, '2025-05-01', 'Completed'),
(12, '2025-05-08', 'Completed'),
(3, '2025-05-15', 'Completed'),
(13, '2025-05-22', 'Cancelled'),
(14, '2025-06-01', 'Completed'),
(15, '2025-06-10', 'Shipped'),
(4, '2025-06-18', 'Completed'),
(5, '2025-06-25', 'Completed'),
(16, '2025-07-02', 'Completed'),
(17, '2025-07-10', 'Completed'),
(6, '2025-07-18', 'Completed'),
(18, '2025-08-01', 'Completed'),
(19, '2025-08-12', 'Shipped'),
(7, '2025-08-20', 'Completed'),
(20, '2025-09-05', 'Completed'),
(8, '2025-09-12', 'Completed'),
(9, '2025-09-20', 'Cancelled'),
(10, '2025-10-01', 'Completed'),
(11, '2025-10-10', 'Completed'),
(12, '2025-10-18', 'Shipped'),
(13, '2025-11-02', 'Completed'),
(14, '2025-11-10', 'Completed'),
(15, '2025-11-20', 'Completed'),
(16, '2025-12-01', 'Completed'),
(17, '2025-12-10', 'Completed'),
(18, '2025-12-15', 'Cancelled'),
(19, '2025-12-20', 'Completed'),
(20, '2025-12-25', 'Completed');

INSERT INTO Order_Items
(order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 65000),
(1, 3, 2, 2500),

(2, 5, 2, 799),
(2, 8, 1, 899),

(3, 2, 1, 30000),
(3, 4, 1, 5000),

(4, 6, 2, 1499),
(4, 10, 1, 650),

(5, 1, 1, 65000),
(5, 15, 2, 900),

(6, 3, 1, 2500),
(6, 9, 1, 1200),

(7, 7, 1, 2499),
(7, 16, 2, 450),

(8, 13, 1, 4500),

(9, 2, 1, 30000),
(9, 5, 2, 799),

(10, 11, 1, 3500),
(10, 12, 1, 1800),

(11, 14, 2, 1200),
(11, 15, 1, 900),

(12, 4, 1, 5000),
(12, 17, 1, 2200),

(13, 1, 1, 65000),
(13, 10, 2, 650),

(14, 6, 1, 1499),
(14, 7, 1, 2499),

(15, 8, 2, 899),
(15, 9, 1, 1200),

(16, 13, 1, 4500),

(17, 16, 3, 450),
(17, 17, 1, 2200),

(18, 18, 2, 700),
(18, 19, 1, 1500),

(19, 2, 1, 30000),
(19, 3, 1, 2500),

(20, 5, 3, 799),
(20, 6, 1, 1499),

(21, 1, 1, 65000),
(21, 4, 1, 5000),

(22, 11, 1, 3500),
(22, 20, 3, 500),

(23, 8, 1, 899),
(23, 10, 2, 650),

(24, 3, 2, 2500),
(24, 15, 1, 900),

(25, 7, 1, 2499),
(25, 17, 1, 2200),

(26, 2, 1, 30000),
(26, 4, 1, 5000),

(27, 12, 2, 1800),
(27, 20, 2, 500),

(28, 13, 1, 4500),
(28, 14, 2, 1200),

(29, 1, 1, 65000),

(30, 5, 2, 799),
(30, 16, 2, 450),

(31, 9, 1, 1200),
(31, 10, 2, 650),

(32, 2, 1, 30000),
(32, 3, 1, 2500),

(33, 6, 2, 1499),
(33, 7, 1, 2499),

(34, 8, 2, 899),
(34, 9, 1, 1200),

(35, 17, 1, 2200),
(35, 20, 4, 500),

(36, 1, 1, 65000),
(36, 3, 1, 2500),

(37, 18, 2, 700),
(37, 19, 1, 1500),

(38, 4, 1, 5000),
(38, 14, 2, 1200),

(39, 2, 1, 30000),
(39, 15, 2, 900),

(40, 5, 2, 799),
(40, 10, 1, 650);

SELECT * FROM Customers;
SELECT * FROM Categories;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Order_Items;
