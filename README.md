# SQL Sales Data Analysis

## Overview

This project demonstrates basic data analysis using SQL on a sales dataset.
The goal is to extract meaningful insights such as top customers, sales trends, and category performance.

## Dataset

* Contains customer orders, product categories, and sales amounts

## Key Analysis Performed

* Top customers based on total purchase
* Total sales by category
* Highest value orders
* Order trends analysis

## SQL Concepts Used

* SELECT, WHERE
* GROUP BY, HAVING
* JOIN
* Aggregation functions (SUM, COUNT, AVG)

## Sample Query

```sql
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;
```

## Outcome

This project helped in understanding how SQL can be used to analyze structured data and generate business insights.
