SELECT  c.customer_id,
        c.first_name,
        c.last_name,
        c.email,
        c.city,
        c.state
FROM customers AS c
LEFT JOIN orders AS o
  ON o.customer_id = c.customer_id
WHERE o.order_id IS NULL
ORDER BY c.customer_id;
