CREATE INDEX idx_orders_customer   ON orders(customer_id);
CREATE INDEX idx_orders_store      ON orders(store_id);
CREATE INDEX idx_orders_staff      ON orders(staff_id);
CREATE INDEX idx_orders_date       ON orders(order_date);
CREATE INDEX idx_order_items_prod  ON order_items(product_id);

CREATE INDEX idx_products_brand    ON products(brand_id);
CREATE INDEX idx_products_category ON products(category_id);

CREATE INDEX idx_stocks_product    ON stocks(product_id);

CREATE INDEX idx_staffs_store      ON staffs(store_id);
CREATE INDEX idx_staffs_manager    ON staffs(manager_id);
