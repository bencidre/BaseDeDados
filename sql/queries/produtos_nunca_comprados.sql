SELECT  p.product_id,
        p.product_name,
        p.brand_id,
        p.category_id,
        p.model_year,
        p.list_price
FROM products AS p
LEFT JOIN order_items AS oi
  ON oi.product_id = p.product_id
WHERE oi.product_id IS NULL
ORDER BY p.product_id;
