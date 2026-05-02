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
