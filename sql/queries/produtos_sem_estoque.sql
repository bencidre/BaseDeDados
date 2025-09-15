SELECT  p.product_id,
        p.product_name,
        COALESCE(SUM(s.quantity), 0) AS total_em_estoque
FROM products AS p
LEFT JOIN stocks AS s
  ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name
HAVING COALESCE(SUM(s.quantity), 0) = 0
ORDER BY p.product_id;