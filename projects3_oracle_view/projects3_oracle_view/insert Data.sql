INSERT INTO MI182_JCBUNAGAN.customer (id, cust_lname, cust_fname, cust_add, cust_phone, resto_id) VALUES (1, 'Caridad', 'John', 'Makati', 12412344, 1)
	INTO MI182_JCBUNAGAN.customer (id, cust_lname, cust_fname, cust_add, cust_phone, resto_id) VALUES (2, 'Cariaga', 'Kristine', 'Taguig', 786812312, 1)
	INTO MI182_JCBUNAGAN.customer (id, cust_lname, cust_fname, cust_add, cust_phone, resto_id) VALUES (3, 'Caridad', 'Asirrh', 'Makati', 21716237, 1)
	INTO MI182_JCBUNAGAN.customer (id, cust_lname, cust_fname, cust_add, cust_phone, resto_id) VALUES (4, 'Bunagan', 'Jhed', 'Taguig', 21312322, 1)
	INTO MI182_JCBUNAGAN.customer (id, cust_lname, cust_fname, cust_add, cust_phone, resto_id) VALUES (5, 'Bunaganda', 'Jhedi', 'Taguig', 812378677, 1)
SELECT * FROM MI182_JCBUNAGAN.customer;

INSERT INTO MI182_JCBUNAGAN.employee (id, emp_lname, emp_fname, emp_add, emp_email, emp_phone, emp_type, resto_id)
	VALUE (112, 'Salvador', 'Khiara', 'Cavite', 'khiaraSal@mail.com', 12344567845,'Maneger', 1),
	(113, 'Menor', 'Adrienne', 'Taguig', 'ads@mail.com', 45674561232,'Head Chef', 1),
	(114, 'Belda', 'Kimberly', 'Pasay', 'kmbelda@mail.com', 012345567894,'Supervisor', 1);

INSERT ALL
	INTO MI182_JCBUNAGAN.food (id, food_name, food_price, food_type) VALUES (1001, 'Chicken Sandwich', 59, 'Sandwich')
	INTO MI182_JCBUNAGAN.food (id, food_name, food_price, food_type) VALUES (1002, 'Tuna Sandwich', 59, 'Sandwich')
	INTO MI182_JCBUNAGAN.food (id, food_name, food_price, food_type) VALUES (1003, 'Ice Cream Sandwich', 69, 'Sandwich')
	INTO MI182_JCBUNAGAN.food (id, food_name, food_price, food_type) VALUES (1004, 'Chicken with Rice', 89, 'Rice Meal')
	INTO MI182_JCBUNAGAN.food (id, food_name, food_price, food_type) VALUES (1006, 'Torikatsudon', 129, 'Special Meal')
SELECT * FROM MI182_JCBUNAGAN.food;


INSERT ALL
	INTO MI182_JCBUNAGAN.ingredients (id, ingredient_code, ingredient_desc) VALUES (1, 'Ala Sauce', NULL)
	INTO MI182_JCBUNAGAN.ingredients (id, ingredient_code, ingredient_desc) VALUES (2, 'Ala Chef', NULL)
	INTO MI182_JCBUNAGAN.ingredients (id, ingredient_code, ingredient_desc) VALUES (3, 'Ala Cartesian', NULL)
	INTO MI182_JCBUNAGAN.ingredients (id, ingredient_code, ingredient_desc) VALUES (4, 'Ala na', NULL)
SELECT * FROM MI182_JCBUNAGAN.ingredients;

INSERT ALL
	INTO MI182_JCBUNAGAN.order_detail (id, od_quantity, od_item, od_remarks, food_id) VALUES (2001, 3, 'Chicken with Rice, Ice Cream Sandwich, Torikatsudon', NULL, 1004)
	INTO MI182_JCBUNAGAN.order_detail (id, od_quantity, od_item, od_remarks, food_id) VALUES (2002, 1, 'Chicken Sandwich', NULL, 1001)
	INTO MI182_JCBUNAGAN.order_detail (id, od_quantity, od_item, od_remarks, food_id) VALUES (2003, 1, 'Ice Cream Sandwich', NULL, 1003)
	INTO MI182_JCBUNAGAN.order_detail (id, od_quantity, od_item, od_remarks, food_id) VALUES (2004, 1, 'Torikatsudon', NULL, 1006)
	INTO MI182_JCBUNAGAN.order_detail (id, od_quantity, od_item, od_remarks, food_id) VALUES (2005, 1, 'Tuna Sandwich', NULL, 1002)
SELECT * FROM MI182_JCBUNAGAN.order_detail;

INSERT ALL
	INTO MI182_JCBUNAGAN.order_header (id, oh_date, order_stat, customer_id, order_detail_id) VALUES (1, '2019-10-31', 'Delivered', 1, 2004)
	INTO MI182_JCBUNAGAN.order_header (id, oh_date, order_stat, customer_id, order_detail_id) VALUES (2, '2019-11-01', 'On queue', 2, 2005)
	INTO MI182_JCBUNAGAN.order_header (id, oh_date, order_stat, customer_id, order_detail_id) VALUES (3, '2019-11-01', 'On queue', 3, 2003)
	INTO MI182_JCBUNAGAN.order_header (id, oh_date, order_stat, customer_id, order_detail_id) VALUES (4, '2019-11-04', 'On queue', 4, 2001)
	INTO MI182_JCBUNAGAN.order_header (id, oh_date, order_stat, customer_id, order_detail_id) VALUES (5, '2019-11-07', 'On queue', 5, 2002)
SELECT * FROM MI182_JCBUNAGAN.order_header;

INSERT ALL
	INTO MI182_JCBUNAGAN.payment (id, payment_amount_total, payment_amount_paid, payment_tax, payment_discount, payment_change, payment_reference_num, order_header_id) VALUES (201910311, 129, 130, 0, 0, 1, 1001, 1)
SELECT * FROM MI182_JCBUNAGAN.payment;

INSERT ALL
	INTO MI182_JCBUNAGAN.resto (id, resto_name, resto_found_date, resto_owner) VALUES (1, 'Sauce Chef', '2012-12-12', 'Patick Volante')
SELECT * FROM MI182_JCBUNAGAN.resto;