SELECT * FROM customers, orders
WHERE
orders.customer_id=customers.id;