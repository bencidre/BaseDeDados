
INSERT INTO brands (brand_id, brand_name) VALUES
  (1,'Trek'), (2,'Giant')
ON CONFLICT (brand_id) DO NOTHING;

INSERT INTO categories (category_id, category_name) VALUES
  (1,'Road Bikes'), (2,'Mountain Bikes')
ON CONFLICT (category_id) DO NOTHING;

INSERT INTO products (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES
  (1,'Domane AL 2',     1, 1, 2023,  8999.00),
  (2,'XTC Advanced 29', 2, 2, 2022, 12999.00),
  (3,'Émonda SL 5',     1, 1, 2024, 14999.00)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO stores (store_id, store_name, phone, email, street, city, state, zip_code) VALUES
  (1,'Downtown Store','1111-1111','downtown@bike.com','Rua A, 100','São Paulo','SP','01000-000'),
  (2,'Uptown Store','2222-2222','uptown@bike.com','Rua B, 200','São Paulo','SP','02000-000')
ON CONFLICT (store_id) DO NOTHING;

INSERT INTO staffs (staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES
  (1,'Alice','Manager','alice@bike.com','1111-0001', TRUE, 1, NULL),
  (2,'Bob','Seller','bob@bike.com','1111-0002', TRUE, 1, 1),
  (3,'Carol','Manager','carol@bike.com','2222-0003', TRUE, 2, NULL)
ON CONFLICT (staff_id) DO NOTHING;

INSERT INTO customers (customer_id, first_name, last_name, email, phone, street, city, state, zip_code) VALUES
  (1,'John','Doe','john@ex.com','90000-0001','Av 1','São Paulo','SP','03000-000'),
  (2,'Mary','Smith','90000-0002@ex.com','90000-0002','Av 2','São Paulo','SP','04000-000'),
  (3,'Pedro','Alves','pedro@ex.com','90000-0003','Av 3','São Paulo','SP','05000-000')
ON CONFLICT (customer_id) DO NOTHING;

INSERT INTO orders (order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id) VALUES
  (1, 1, 4, CURRENT_DATE, CURRENT_DATE + INTERVAL '7 day', CURRENT_DATE + INTERVAL '1 day', 1, 2),
  (2, 2, 4, CURRENT_DATE, CURRENT_DATE + INTERVAL '5 day', CURRENT_DATE + INTERVAL '2 day', 2, 3)
ON CONFLICT (order_id) DO NOTHING;

INSERT INTO order_items (order_id, item_id, product_id, quantity, list_price, discount) VALUES
  (1,1,1,1, 8999.00, 0.10),
  (2,1,2,2,12999.00, 0.00)
ON CONFLICT (order_id, item_id) DO NOTHING;

INSERT INTO stocks (store_id, product_id, quantity) VALUES
  (1,1, 5),
  (2,2,10)
ON CONFLICT (store_id, product_id) DO NOTHING;

SELECT setval(pg_get_serial_sequence('brands','brand_id'),       COALESCE(MAX(brand_id),0),       true) FROM brands;
SELECT setval(pg_get_serial_sequence('categories','category_id'),COALESCE(MAX(category_id),0),    true) FROM categories;
SELECT setval(pg_get_serial_sequence('products','product_id'),   COALESCE(MAX(product_id),0),     true) FROM products;
SELECT setval(pg_get_serial_sequence('stores','store_id'),       COALESCE(MAX(store_id),0),       true) FROM stores;
SELECT setval(pg_get_serial_sequence('staffs','staff_id'),       COALESCE(MAX(staff_id),0),       true) FROM staffs;
SELECT setval(pg_get_serial_sequence('customers','customer_id'), COALESCE(MAX(customer_id),0),    true) FROM customers;
SELECT setval(pg_get_serial_sequence('orders','order_id'),       COALESCE(MAX(order_id),0),       true) FROM orders;
