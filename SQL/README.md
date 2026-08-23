# SQL Data Validation

## Project Overview

This module demonstrates basic SQL skills used for data validation in software testing.

Since SauceDemo does not provide access to its database, a separate SQLite e-commerce database was created for learning and demonstrating SQL testing techniques.

The database contains users, products, orders and order items, allowing validation of relationships and data consistency between multiple tables.

## Database

- Database: SQLite
- Tool: DB Browser for SQLite

### Tables

- `users` – user information
- `products` – available products, prices and stock
- `orders` – customer orders, total amounts and statuses
- `order_items` – products and quantities assigned to individual order

## SQL Validation Scope

The SQL queries include:

- product price and stock analysis
- filtering and sorting data
- aggregation using `MIN`, `MAX`, `AVG`, `SUM` and `COUNT`
- grouping data with `GROUP BY` and `HAVING`
- detecting duplicate product names
- validating relationships between users and orders
- identifying users without orders
- identifying orders assigned to non-existing users
- combining data from multiple tables using `JOIN` and `LEFT JOIN`
- calculating total order value per user
- validating stored order totals against calculated product values

## Example Validation Queries

### Find orders assigned to non-existing users

```sql
SELECT o.id, o.user_id
FROM orders AS o
LEFT JOIN users AS u ON o.user_id = u.id
WHERE u.id IS NULL;
```

This query detects orders that reference users who do not exist in the `users` table.

### Calculate total value of completed orders for all users

```sql
SELECT 
    u.name,
    COALESCE(SUM(o.total_amount), 0) AS total_spent
FROM users AS u
LEFT JOIN orders AS o 
    ON u.id = o.user_id
    AND o.status = 'completed'
GROUP BY u.id, u.name;
```

This query calculates the total value of completed orders for every user, including users without completed orders.

### Find orders with incorrect total amounts

```sql
SELECT 
    o.id AS order_id,
    o.total_amount,
    SUM(oi.quantity * p.price) AS calculated_total
FROM orders AS o
JOIN order_items AS oi ON o.id = oi.order_id
JOIN products AS p ON oi.product_id = p.id
GROUP BY o.id, o.total_amount
HAVING ABS(SUM(p.price * oi.quantity) - o.total_amount) > 0.01;
```

This query compares the stored order total with the value calculated from product prices and quantities. It returns orders where the difference is greater than `0.01`.

## Repository Files

- `test_queries.sql` – SQL queries used for data validation
- `qa_store.db` – SQLite database containing sample e-commerce data
- `README.md` – documentation of the SQL testing module

## How to Run

1. Open DB Browser for SQLite.
2. Open the `qa_store.db` database.
3. Go to the **Execute SQL** tab.
4. Open or copy a query from `test_queries.sql`.
5. Execute the query and review the returned results.

## Skills Demonstrated

- SQL data filtering
- data aggregation
- data grouping
- duplicate detection
- `INNER JOIN`
- `LEFT JOIN`
- handling `NULL` values
- relational data validation
- calculation and verification of order totals
- identification of inconsistent or missing data