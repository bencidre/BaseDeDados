SELECT  s.staff_id,
        s.first_name,
        s.last_name,
        s.email,
        s.store_id,
        s.manager_id
FROM staffs AS s
LEFT JOIN orders AS o
  ON o.staff_id = s.staff_id
WHERE o.order_id IS NULL
ORDER BY s.staff_id;