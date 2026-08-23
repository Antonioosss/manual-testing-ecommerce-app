-- SQL validation queries

-- Get minimum, maximum and average product price
SELECT 
    MIN(price) AS min_price,
    MAX(price) AS max_price,
    AVG(price) AS avg_price
FROM products;

-- Calculate the total value of all products in stock
SELECT SUM(price * stock) AS full_stock_value
FROM products;

-- Find products with prices between 50 and 200
SELECT name, price
FROM products
WHERE price BETWEEN 50 AND 200;

-- Get the three most expensive products
SELECT name, price
FROM products
ORDER BY price DESC
LIMIT 3;

-- Get product categories with more than one product
SELECT category, COUNT(*) AS product_count
FROM products
GROUP BY category
HAVING COUNT(*) > 1;

-- Get orders with user names and total amounts
SELECT 
    o.id AS order_id,
    u.name AS user_name,
    o.total_amount
FROM users AS u
JOIN orders AS o ON u.id = o.user_id;

-- Get completed orders with user details
SELECT 
    o.id AS order_id,
    u.name AS user_name,
    o.total_amount,
    o.status
FROM users AS u
JOIN orders AS o ON u.id = o.user_id
WHERE o.status = 'completed';

-- Find users without any orders
SELECT 
    u.id AS user_id,
    u.name
FROM users AS u
LEFT JOIN orders AS o ON u.id = o.user_id
WHERE o.id IS NULL;

-- Find orders assigned to non-existing users
SELECT o.id, o.user_id
FROM orders AS o
LEFT JOIN users AS u ON o.user_id = u.id
WHERE u.id IS NULL;

-- Count orders for all users, including users without orders
SELECT u.name, COUNT(o.id) AS order_count
FROM users AS u
LEFT JOIN orders AS o ON u.id = o.user_id
GROUP BY u.id, u.name;

-- Calculate total value of completed orders for all users
SELECT 
    u.name,
    COALESCE(SUM(o.total_amount), 0) AS total_spent
FROM users AS u
LEFT JOIN orders AS o 
    ON u.id = o.user_id
    AND o.status = 'completed'
GROUP BY u.id, u.name;

-- Find duplicate product names
SELECT name, COUNT(*) AS duplicate_count
FROM products
GROUP BY name
HAVING COUNT(*) > 1;

-- Get users with their orders, products and quantities
SELECT 
	u.name AS user_name, 
	o.id AS order_id,
	p.name AS product_name,
	oi.quantity
FROM users AS u
JOIN orders AS o ON u.id = o.user_id
JOIN order_items AS oi ON o.id = oi.order_id
JOIN products AS p ON oi.product_id = p.id;

-- Find orders with incorrect total amounts
SELECT 
    o.id AS order_id,
    o.total_amount,
    SUM(oi.quantity * p.price) AS calculated_total
FROM orders AS o
JOIN order_items AS oi ON o.id = oi.order_id
JOIN products AS p ON oi.product_id = p.id
GROUP BY o.id, o.total_amount
HAVING ABS(SUM(p.price * oi.quantity) - o.total_amount) > 0.01;

