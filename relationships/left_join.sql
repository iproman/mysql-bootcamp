
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
  amount
FROM customers
JOIN orders
  ON orders.customer_id = customers.id
  GROUP BY orders.customer_id;