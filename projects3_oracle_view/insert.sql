INSERT INTO MI182_JCBUNAGAN.customer (id, cust_lname, cust_fname, cust_add, cust_phone, resto_id) VALUES (1, 'Caridad', 'John', 'Makati', 12412344, 1);
INSERT INTO MI182_JCBUNAGAN.customer (id, cust_lname, cust_fname, cust_add, cust_phone, resto_id) VALUES (2, 'Cariaga', 'Kristine', 'Taguig', 786812312, 1);
INSERT INTO MI182_JCBUNAGAN.customer (id, cust_lname, cust_fname, cust_add, cust_phone, resto_id) VALUES (3, 'Caridad', 'Asirrh', 'Makati', 21716237, 1);
INSERT INTO MI182_JCBUNAGAN.customer (id, cust_lname, cust_fname, cust_add, cust_phone, resto_id) VALUES (4, 'Bunagan', 'Jhed', 'Taguig', 21312322, 1);
INSERT INTO MI182_JCBUNAGAN.customer (id, cust_lname, cust_fname, cust_add, cust_phone, resto_id) VALUES (5, 'Bunaganda', 'Jhedi', 'Taguig', 812378677, 1);

INSERT INTO MI182_JCBUNAGAN.food (id, food_name, food_price, food_type) VALUES (1001, 'Chicken Sandwich', 59, 'Sandwich');
INSERT INTO MI182_JCBUNAGAN.food (id, food_name, food_price, food_type) VALUES (1002, 'Tuna Sandwich', 59, 'Sandwich');
INSERT INTO MI182_JCBUNAGAN.food (id, food_name, food_price, food_type) VALUES (1003, 'Ice Cream Sandwich', 69, 'Sandwich');
INSERT INTO MI182_JCBUNAGAN.food (id, food_name, food_price, food_type) VALUES (1004, 'Chicken with Rice', 89, 'Rice Meal');
INSERT INTO MI182_JCBUNAGAN.food (id, food_name, food_price, food_type) VALUES (1006, 'Torikatsudon', 129, 'Special Meal');


INSERT INTO MI182_JCBUNAGAN.ingredients (id, ingredient_code, ingredient_desc) VALUES (1, 'Ala Sauce', NULL);
INSERT INTO MI182_JCBUNAGAN.ingredients (id, ingredient_code, ingredient_desc) VALUES (2, 'Ala Chef', NULL);
INSERT INTO MI182_JCBUNAGAN.ingredients (id, ingredient_code, ingredient_desc) VALUES (3, 'Ala Cartesian', NULL);
INSERT INTO MI182_JCBUNAGAN.ingredients (id, ingredient_code, ingredient_desc) VALUES (4, 'Ala na', NULL);


INSERT INTO MI182_JCBUNAGAN.order_detail (id, od_quantity, od_item, od_remarks, food_id) VALUES (2001, 3, 'Chicken with Rice, Ice Cream Sandwich, Torikatsudon', NULL, 1004);
INSERT INTO MI182_JCBUNAGAN.order_detail (id, od_quantity, od_item, od_remarks, food_id) VALUES (2002, 1, 'Chicken Sandwich', NULL, 1001);
INSERT INTO MI182_JCBUNAGAN.order_detail (id, od_quantity, od_item, od_remarks, food_id) VALUES (2003, 1, 'Ice Cream Sandwich', NULL, 1003);
INSERT INTO MI182_JCBUNAGAN.order_detail (id, od_quantity, od_item, od_remarks, food_id) VALUES (2004, 1, 'Torikatsudon', NULL, 1006);
INSERT INTO MI182_JCBUNAGAN.order_detail (id, od_quantity, od_item, od_remarks, food_id) VALUES (2005, 1, 'Tuna Sandwich', NULL, 1002);


INSERT INTO MI182_JCBUNAGAN.order_header (id, oh_date, order_stat, customer_id, order_detail_id) VALUES (1, '2019-10-31', 'Delivered', 1, 2004);
INSERT INTO MI182_JCBUNAGAN.order_header (id, oh_date, order_stat, customer_id, order_detail_id) VALUES (2, '2019-11-01', 'On queue', 6, 2005);
INSERT INTO MI182_JCBUNAGAN.order_header (id, oh_date, order_stat, customer_id, order_detail_id) VALUES (3, '2019-11-01', 'On queue', 8, 2003);
INSERT INTO MI182_JCBUNAGAN.order_header (id, oh_date, order_stat, customer_id, order_detail_id) VALUES (4, '2019-11-04', 'On queue', 2, 2001);
INSERT INTO MI182_JCBUNAGAN.order_header (id, oh_date, order_stat, customer_id, order_detail_id) VALUES (5, '2019-11-07', 'On queue', 4, 2002);

INSERT INTO MI182_JCBUNAGAN.payment (id, payment_amount_total, payment_amount_paid, payment_tax, payment_discount, payment_change, payment_reference_num, order_header_id) VALUES (201910311, 129, 130, 0, 0, 1, 1001, 1);

INSERT INTO MI182_JCBUNAGAN.resto (id, resto_name, resto_found_date, resto_owner) VALUES (1, 'Sauce Chef', '2012-12-12', 'Patick Volante');

INSERT INTO MI182_JCBUNAGAN.order_header (id, oh_date, order_stat, CUSTOMER_id, order_detail_id) VALUES (1, '2019-10-31', 'To be delivered', 1910310001, 1);
INSERT INTO MI182_JCBUNAGAN.order_header (id, oh_date, order_stat, CUSTOMER_id, order_detail_id) VALUES(2, '2019-10-31', 'On queue', 1910310002, 2);
INSERT INTO MI182_JCBUNAGAN.order_header (id, oh_date, order_stat, CUSTOMER_id, order_detail_id) VALUES(3, '2019-10-31', 'On queue', 1910310003, 3);

INSERT INTO MI182_JCBUNAGAN.employee (id, emp_lname, emp_fname, emp_add, emp_email, emp_phone, emp_type, resto_id) VALUES (2012001, 'Oyamat', 'Jigs', 'Makati', 'jo@gmail.com', '12333212', 'Full-time', 1);
INSERT INTO MI182_JCBUNAGAN.employee (id, emp_lname, emp_fname, emp_add, emp_email, emp_phone, emp_type, resto_id) VALUES (2012002, 'Maga', 'Kat', 'Taguig', 'kmaga@gmail.com', '32132312', 'Full-time', 1);
INSERT INTO MI182_JCBUNAGAN.employee (id, emp_lname, emp_fname, emp_add, emp_email, emp_phone, emp_type, resto_id) VALUES (2018034, 'Ascari', 'Alberto', 'Taguig', 'aa@gmail.com', '3232223', 'Part-time', 1);

	INSERT INTO MI182_JCBUNAGAN.purchase_order (id, supplier_id, resto_id, po_order_date, po_delivery_date, po_order_stat) VALUES (21011, 2101, 1, '2019-10-09', '2019-10-11', 'Delivered');
	INSERT INTO MI182_JCBUNAGAN.purchase_order (id, supplier_id, resto_id, po_order_date, po_delivery_date, po_order_stat) VALUES (21012, 2101, 1, '2019-10-10', '2019-10-12', 'Delivered');
	INSERT INTO MI182_JCBUNAGAN.purchase_order (id, supplier_id, resto_id, po_order_date, po_delivery_date, po_order_stat) VALUES (21021, 2102, 1, '2019-10-08', '2019-10-12', 'Delivered');

INSERT INTO MI182_JCBUNAGAN.recipe (id, food_id, ingredients_id) VALUES (011,1001, 'Ala Sauce', NULL);
INSERT INTO MI182_JCBUNAGAN.recipe (id, food_id, ingredients_id) VALUES (012,1002, 'Ala Chef', NULL);
INSERT INTO MI182_JCBUNAGAN.recipe (id, food_id, ingredients_id) VALUES (013,1003, 'Ala Cartesian', NULL);
INSERT INTO MI182_JCBUNAGAN.recipe (id, food_id, ingredients_id) VALUES (014,1004, 'Ala na', NULL);

