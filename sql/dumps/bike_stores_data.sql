--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8
-- Dumped by pg_dump version 16.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.brands VALUES (1, 'Trek');
INSERT INTO public.brands VALUES (2, 'Giant');


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories VALUES (1, 'Road Bikes');
INSERT INTO public.categories VALUES (2, 'Mountain Bikes');


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customers VALUES (1, 'John', 'Doe', '90000-0001', 'john@ex.com', 'Av 1', 'São Paulo', 'SP', '03000-000');
INSERT INTO public.customers VALUES (2, 'Mary', 'Smith', '90000-0002', 'mary@ex.com', 'Av 2', 'São Paulo', 'SP', '04000-000');
INSERT INTO public.customers VALUES (3, 'Pedro', 'Alves', '90000-0003', 'pedro@ex.com', 'Av 3', 'São Paulo', 'SP', '05000-000');


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stores VALUES (1, 'Downtown Store', '1111-1111', 'downtown@bike.com', 'Rua A, 100', 'São Paulo', 'SP', '01000-000');
INSERT INTO public.stores VALUES (2, 'Uptown Store', '2222-2222', 'uptown@bike.com', 'Rua B, 200', 'São Paulo', 'SP', '02000-000');


--
-- Data for Name: staffs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.staffs VALUES (1, 'Alice', 'Manager', 'alice@bike.com', '1111-0001', true, 1, NULL);
INSERT INTO public.staffs VALUES (2, 'Bob', 'Seller', 'bob@bike.com', '1111-0002', true, 1, 1);
INSERT INTO public.staffs VALUES (3, 'Carol', 'Manager', 'carol@bike.com', '2222-0003', true, 2, NULL);


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders VALUES (1, 1, 4, '2025-09-15', '2025-09-22', '2025-09-16', 1, 2);
INSERT INTO public.orders VALUES (2, 2, 4, '2025-09-15', '2025-09-20', '2025-09-17', 2, 3);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products VALUES (1, 'Domane AL 2', 1, 1, 2023, 8999.00);
INSERT INTO public.products VALUES (2, 'XTC Advanced 29', 2, 2, 2022, 12999.00);
INSERT INTO public.products VALUES (3, 'Émonda SL 5', 1, 1, 2024, 14999.00);


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_items VALUES (1, 1, 1, 1, 8999.00, 0.10);
INSERT INTO public.order_items VALUES (2, 1, 2, 2, 12999.00, 0.00);


--
-- Data for Name: stocks; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stocks VALUES (1, 1, 5);
INSERT INTO public.stocks VALUES (2, 2, 10);


--
-- Name: brands_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_brand_id_seq', 2, true);


--
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 2, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 3, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 2, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 3, true);


--
-- Name: staffs_staff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staffs_staff_id_seq', 3, true);


--
-- Name: stores_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stores_store_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

