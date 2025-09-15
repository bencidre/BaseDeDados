SELECT  st.store_id,
        st.store_name,
        b.brand_id,
        b.brand_name,
        COUNT(DISTINCT o.order_id)                        AS total_pedidos,
        SUM(oi.quantity)                                  AS itens_vendidos,
        SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS receita_bruta
FROM orders AS o
JOIN stores AS st      ON st.store_id = o.store_id
JOIN order_items AS oi ON oi.order_id = o.order_id
JOIN products AS p     ON p.product_id = oi.product_id
JOIN brands   AS b     ON b.brand_id = p.brand_id
GROUP BY st.store_id, st.store_name, b.brand_id, b.brand_name
ORDER BY st.store_name, b.brand_name;