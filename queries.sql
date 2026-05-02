-- Create table
CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(50),
    amount INT,
    category VARCHAR(50)
);

-- Insert data
INSERT INTO orders VALUES
(1, 'Amit', 500, 'Electronics'),
(2, 'Riya', 200, 'Clothing'),
(3, 'Amit', 300, 'Electronics'),
(4, 'Rahul', 150, 'Clothing'),
(5, 'Riya', 700, 'Electronics');

-- Total sales per customer
SELECT customer_name, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_name;

-- Top spending customer
SELECT customer_name, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_name
ORDER BY total_spent DESC;

-- Sales by category
SELECT category, SUM(amount) AS total_sales
FROM orders
GROUP BY category;

-- 1. Count total orders per customer
SELECT customer_name, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_name;

-- 2. Average order value per customer
SELECT customer_name, AVG(amount) AS avg_order_value
FROM orders
GROUP BY customer_name;

-- 3. Customers who spent more than 500 total
SELECT customer_name, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_name
HAVING SUM(amount) > 500;

-- 4. Find highest single order
SELECT *
FROM orders
ORDER BY amount DESC
LIMIT 1;

-- 5. Count orders per category
SELECT category, COUNT(*) AS total_orders
FROM orders
GROUP BY category;

-- 6. Find customers who ordered more than once
SELECT customer_name, COUNT(*) AS order_count
FROM orders
GROUP BY customer_name
HAVING COUNT(*) > 1;

-- 7. Total sales overall
SELECT SUM(amount) AS total_sales
FROM orders;

-- 8. Find second highest order amount
SELECT DISTINCT amount
FROM orders
ORDER BY amount DESC
LIMIT 1 OFFSET 1;

-- 9. Percentage contribution of each category
SELECT category,
       SUM(amount) AS category_sales,
       (SUM(amount) * 100.0 / (SELECT SUM(amount) FROM orders)) AS percentage
FROM orders
GROUP BY category;

-- 10. Customers who spent more than average spending
SELECT customer_name, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_name
HAVING SUM(amount) > (
    SELECT AVG(amount) FROM orders
);
