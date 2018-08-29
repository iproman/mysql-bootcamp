
SELECT
  order_date,
  CONCAT(first_name, ' ', last_name) AS 'Full name',
  amount
FROM customers
JOIN orders
  ON orders.customer_id = customers.id
  ORDER BY order_date DESC;

SELECT
  order_date,
  CONCAT(first_name, ' ', last_name) AS 'Full name',
  SUM(amount) AS total_spent
FROM customers
JOIN orders
  ON customers.id = orders.customer_id
GROUP BY orders.customer_id, order_date
ORDER BY total_spent DESC;

SELECT * FROM customers
INNER JOIN orders
  ON customers.id = orders.customer_id;

SELECT * FROM customers
LEFT JOIN orders
  ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount as a FROM customers
LEFT JOIN orders
  ON customers.id = orders.customer_id;

SELECT
  first_name,
  last_name,
  IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
  ON customers.id = orders.customer_id
GROUP BY customers.id, order_date
ORDER BY total_spent;