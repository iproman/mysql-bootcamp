SELECT * FROM customers
LEFT JOIN orders
  ON customers.id = orders.customer_id;

-- RIGHT JOIN
SELECT
  first_name,
  last_name,
  order_date,
  amount
FROM customers
JOIN orders
  ON customers.id = orders.customer_id;

-- DELETE FROM customers
-- WHERE first_name='Boy';