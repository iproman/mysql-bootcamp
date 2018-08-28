-- IMPLICIT INNER JOIN
SELECT * FROM orders, customers
WHERE
orders.customer_id=customers.id;

SELECT
  order_date,
  CONCAT(first_name, ' ', last_name) AS 'Full name',
  amount
FROM orders, customers
WHERE orders.customer_id=customers.id;


-- EXPLICIT INNER JOIN
SELECT
  order_date,
  CONCAT(first_name, ' ', last_name) AS 'Full name',
  amount
FROM customers
JOIN orders
  ON orders.customer_id = customers.id;

-- ARBITRARY JOIN - don't do that
SELECT * FROM customers
JOIN orders
  ON orders.customer_id = customers.id;