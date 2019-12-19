CREATE TABLE MI182_JCBUNAGAN.employee (
    id number NOT NULL,
    emp_lname varchar2(200) NOT NULL,
    emp_fname varchar2(200) NOT NULL,
    emp_add varchar2(200) NOT NULL,
    emp_email varchar2(200),
    emp_phone varchar2(200),
    emp_type varchar2(200)NOT NULL,
    resto_id number(7,2) NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT resto_emplo FOREIGN KEY (resto_id) REFERENCES MI182_JCBUNAGAN.RESTO (id)
);

CREATE TABLE MI182_JCBUNAGAN.food (
    id number NOT NULL,
    food_name varchar2(18) NOT NULL,
    food_price number(7,2) NOT NULL,
    food_type varchar2(12) NOT NULL,
	PRIMARY KEY(id)
	
);

CREATE TABLE MI182_JCBUNAGAN.ingredients (
    id number NOT NULL,
    ingredient_code varchar2(50),
    ingredient_desc varchar2(50),
	PRIMARY KEY(id)
);

CREATE TABLE MI182_JCBUNAGAN.order_detail (
    id number NOT NULL,
    od_quantity number(3) NOT NULL,
    od_item varchar2(51) NOT NULL,
    od_remarks varchar2(200),
    food_id number NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT od_food FOREIGN KEY (food_id) REFERENCES MI182_JCBUNAGAN.FOOD (id)
);

CREATE TABLE MI182_JCBUNAGAN.order_header (
    id number NOT NULL,
    oh_date varchar2(10) NOT NULL,
    order_stat varchar2(9) NOT NULL,
    customer_id number(7,2) NOT NULL,
    order_detail_id number(7,2) NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT oh_cust FOREIGN KEY (customer_id) REFERENCES MI182_JCBUNAGAN.customer (id),
	CONSTRAINT oh_od FOREIGN KEY (ORDER_HEADER_id) REFERENCES MI182_JCBUNAGAN.ORDER_HEADER (id)
);

CREATE TABLE MI182_JCBUNAGAN.payment (
    id number NOT NULL,
    payment_amount_total number(7,2) NOT NULL,
    payment_amount_paid number(7,2) NOT NULL,
    payment_tax number(7,2),
    payment_discount number(7,2),
    payment_change number(7,2),
    payment_reference_num number(7,2),
    order_header_id number(7,2) NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT payment_oh FOREIGN KEY (ORDER_HEADER_id) REFERENCES MI182_JCBUNAGAN.ORDER_HEADER (id)
);

CREATE TABLE MI182_JCBUNAGAN.purchase_order (
    id number NOT NULL,
    supplier_id number(7,2) NOT NULL,
    resto_id number(7,2) NOT NULL,
    po_order_date varchar2(200) NOT NULL,
    po_delivery_date varchar2(200) NOT NULL,
    po_order_stat varchar2(200) NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT po_sup FOREIGN KEY (supplier_id) REFERENCES MI182_JCBUNAGAN.SUPPLIER (id),
	CONSTRAINT po_rest FOREIGN KEY (resto_id) REFERENCES MI182_JCBUNAGAN.RESTO (id)
);

CREATE TABLE MI182_JCBUNAGAN.recipe (
    id number NOT NULL,
    food_id number(7,2) NOT NULL,
    ingredients_id number(7,2) NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT recipe_ingre FOREIGN KEY (ingredients_id) REFERENCES MI182_JCBUNAGAN.INGREDIENTS (id),
	CONSTRAINT recipe_food FOREIGN KEY (food_id) REFERENCES MI182_JCBUNAGAN.FOOD (id)
);

CREATE TABLE MI182_JCBUNAGAN.resto (
    id number NOT NULL,
    resto_name varchar2(10) NOT NULL,
    resto_found_date varchar2(10) NOT NULL,
    resto_owner varchar2(14) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE MI182_JCBUNAGAN.supplier (
    id number NOT NULL,
    supplier_name varchar2(200) NOT NULL,
    supplier_loc varchar2(200) NOT NULL,
    partners_num varchar2(200) NOT NULL,
	resto_id number NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT supp_rest FOREIGN KEY (resto_id) REFERENCES MI182_JCBUNAGAN.RESTO (id)
);

CREATE TABLE MI182_JCBUNAGAN.customer (
    id number NOT NULL,
    cust_lname varchar2(200) NOT NULL,
    cust_fname varchar2(200) NOT NULL,
    cust_add varchar2(200) NOT NULL,
    cust_phone varchar2(200) NOT NULL,
    resto_id number NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT cost_rest FOREIGN KEY (resto_id) REFERENCES MI182_JCBUNAGAN.RESTO (id)
);


