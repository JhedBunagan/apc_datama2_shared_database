PGDMP     /    	        	         x            datama2_mi182 %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)    12.0 Y    �           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16388    datama2_mi182    DATABASE     p   CREATE DATABASE datama2_mi182 WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE datama2_mi182;
                datama2mi182    false                        2615    18541 	   jcbunagan    SCHEMA        CREATE SCHEMA jcbunagan;
    DROP SCHEMA jcbunagan;
                datama2mi182    false            \           1259    28008    customer    TABLE     f  CREATE TABLE jcbunagan.customer (
    id integer NOT NULL,
    cust_lname character varying(9) DEFAULT NULL::character varying NOT NULL,
    cust_fname character varying(8) DEFAULT NULL::character varying NOT NULL,
    cust_add character varying(6) DEFAULT NULL::character varying NOT NULL,
    cust_phone integer NOT NULL,
    resto_id smallint NOT NULL
);
    DROP TABLE jcbunagan.customer;
    	   jcbunagan            datama2mi182    false    25            [           1259    28006    customer_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE jcbunagan.customer_id_seq;
    	   jcbunagan          datama2mi182    false    25    604            �           0    0    customer_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE jcbunagan.customer_id_seq OWNED BY jcbunagan.customer.id;
       	   jcbunagan          datama2mi182    false    603            P           1259    27949    order_header    TABLE     %  CREATE TABLE jcbunagan.order_header (
    id integer NOT NULL,
    oh_date character varying(10) DEFAULT NULL::character varying NOT NULL,
    order_stat character varying(9) DEFAULT NULL::character varying NOT NULL,
    customer_id smallint NOT NULL,
    order_detail_id smallint NOT NULL
);
 #   DROP TABLE jcbunagan.order_header;
    	   jcbunagan            datama2mi182    false    25            _           1259    28076    customer_order    VIEW     d  CREATE VIEW jcbunagan.customer_order AS
 SELECT customer.id,
    customer.cust_lname,
    customer.cust_fname,
    customer.cust_add,
    customer.cust_phone,
    order_header.oh_date,
    order_header.order_stat,
    order_header.order_detail_id
   FROM (jcbunagan.customer
     JOIN jcbunagan.order_header ON ((order_header.customer_id = customer.id)));
 $   DROP VIEW jcbunagan.customer_order;
    	   jcbunagan          datama2mi182    false    604    592    604    604    592    604    604    592    592    25            H           1259    27907    employee    TABLE       CREATE TABLE jcbunagan.employee (
    id integer NOT NULL,
    emp_lname character varying(1) DEFAULT NULL::character varying NOT NULL,
    emp_fname character varying(1) DEFAULT NULL::character varying NOT NULL,
    emp_add character varying(1) DEFAULT NULL::character varying NOT NULL,
    emp_email character varying(1) DEFAULT NULL::character varying,
    emp_phone character varying(1) DEFAULT NULL::character varying,
    emp_type character varying(1) DEFAULT NULL::character varying NOT NULL,
    resto_id smallint NOT NULL
);
    DROP TABLE jcbunagan.employee;
    	   jcbunagan            datama2mi182    false    25            G           1259    27905    employee_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE jcbunagan.employee_id_seq;
    	   jcbunagan          datama2mi182    false    584    25            �           0    0    employee_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE jcbunagan.employee_id_seq OWNED BY jcbunagan.employee.id;
       	   jcbunagan          datama2mi182    false    583            J           1259    27921    food    TABLE     �   CREATE TABLE jcbunagan.food (
    id integer NOT NULL,
    food_name character varying(18) DEFAULT NULL::character varying NOT NULL,
    food_price smallint NOT NULL,
    food_type character varying(12) DEFAULT NULL::character varying NOT NULL
);
    DROP TABLE jcbunagan.food;
    	   jcbunagan            datama2mi182    false    25            I           1259    27919    food_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.food_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE jcbunagan.food_id_seq;
    	   jcbunagan          datama2mi182    false    25    586            �           0    0    food_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE jcbunagan.food_id_seq OWNED BY jcbunagan.food.id;
       	   jcbunagan          datama2mi182    false    585            L           1259    27931    ingredients    TABLE     |   CREATE TABLE jcbunagan.ingredients (
    id integer NOT NULL,
    ingredient_code smallint,
    ingredient_desc smallint
);
 "   DROP TABLE jcbunagan.ingredients;
    	   jcbunagan            datama2mi182    false    25            K           1259    27929    ingredients_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.ingredients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE jcbunagan.ingredients_id_seq;
    	   jcbunagan          datama2mi182    false    25    588            �           0    0    ingredients_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE jcbunagan.ingredients_id_seq OWNED BY jcbunagan.ingredients.id;
       	   jcbunagan          datama2mi182    false    587            N           1259    27939    order_detail    TABLE       CREATE TABLE jcbunagan.order_detail (
    id integer NOT NULL,
    od_quantity smallint NOT NULL,
    od_item character varying(51) DEFAULT NULL::character varying NOT NULL,
    od_remarks character varying(1) DEFAULT NULL::character varying,
    food_id smallint NOT NULL
);
 #   DROP TABLE jcbunagan.order_detail;
    	   jcbunagan            datama2mi182    false    25            M           1259    27937    order_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.order_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE jcbunagan.order_detail_id_seq;
    	   jcbunagan          datama2mi182    false    25    590            �           0    0    order_detail_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE jcbunagan.order_detail_id_seq OWNED BY jcbunagan.order_detail.id;
       	   jcbunagan          datama2mi182    false    589            O           1259    27947    order_header_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.order_header_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE jcbunagan.order_header_id_seq;
    	   jcbunagan          datama2mi182    false    25    592            �           0    0    order_header_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE jcbunagan.order_header_id_seq OWNED BY jcbunagan.order_header.id;
       	   jcbunagan          datama2mi182    false    591            R           1259    27959    payment    TABLE     4  CREATE TABLE jcbunagan.payment (
    id integer NOT NULL,
    payment_amount_total smallint NOT NULL,
    payment_amount_paid smallint NOT NULL,
    payment_tax smallint,
    payment_discount smallint,
    payment_change smallint,
    payment_reference_num smallint,
    order_header_id smallint NOT NULL
);
    DROP TABLE jcbunagan.payment;
    	   jcbunagan            datama2mi182    false    25            Q           1259    27957    payment_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE jcbunagan.payment_id_seq;
    	   jcbunagan          datama2mi182    false    594    25            �           0    0    payment_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE jcbunagan.payment_id_seq OWNED BY jcbunagan.payment.id;
       	   jcbunagan          datama2mi182    false    593            T           1259    27967    purchase_order    TABLE     |  CREATE TABLE jcbunagan.purchase_order (
    id integer NOT NULL,
    supplier_id smallint NOT NULL,
    resto_id smallint NOT NULL,
    po_order_date character varying(1) DEFAULT NULL::character varying NOT NULL,
    po_delivery_date character varying(1) DEFAULT NULL::character varying NOT NULL,
    po_order_stat character varying(1) DEFAULT NULL::character varying NOT NULL
);
 %   DROP TABLE jcbunagan.purchase_order;
    	   jcbunagan            datama2mi182    false    25            S           1259    27965    purchase_order_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.purchase_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE jcbunagan.purchase_order_id_seq;
    	   jcbunagan          datama2mi182    false    25    596            �           0    0    purchase_order_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE jcbunagan.purchase_order_id_seq OWNED BY jcbunagan.purchase_order.id;
       	   jcbunagan          datama2mi182    false    595            V           1259    27978    recipe    TABLE     �   CREATE TABLE jcbunagan.recipe (
    id integer NOT NULL,
    food_id smallint NOT NULL,
    ingredients_id smallint NOT NULL
);
    DROP TABLE jcbunagan.recipe;
    	   jcbunagan            datama2mi182    false    25            U           1259    27976    recipe_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.recipe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE jcbunagan.recipe_id_seq;
    	   jcbunagan          datama2mi182    false    25    598            �           0    0    recipe_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE jcbunagan.recipe_id_seq OWNED BY jcbunagan.recipe.id;
       	   jcbunagan          datama2mi182    false    597            X           1259    27986    resto    TABLE     .  CREATE TABLE jcbunagan.resto (
    id integer NOT NULL,
    resto_name character varying(10) DEFAULT NULL::character varying NOT NULL,
    resto_found_date character varying(10) DEFAULT NULL::character varying NOT NULL,
    resto_owner character varying(14) DEFAULT NULL::character varying NOT NULL
);
    DROP TABLE jcbunagan.resto;
    	   jcbunagan            datama2mi182    false    25            W           1259    27984    resto_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.resto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE jcbunagan.resto_id_seq;
    	   jcbunagan          datama2mi182    false    600    25            �           0    0    resto_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE jcbunagan.resto_id_seq OWNED BY jcbunagan.resto.id;
       	   jcbunagan          datama2mi182    false    599            Z           1259    27997    supplier    TABLE     .  CREATE TABLE jcbunagan.supplier (
    id integer NOT NULL,
    supplier_name character varying(1) DEFAULT NULL::character varying NOT NULL,
    supplier_loc character varying(1) DEFAULT NULL::character varying NOT NULL,
    partners_num character varying(1) DEFAULT NULL::character varying NOT NULL
);
    DROP TABLE jcbunagan.supplier;
    	   jcbunagan            datama2mi182    false    25            Y           1259    27995    supplier_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE jcbunagan.supplier_id_seq;
    	   jcbunagan          datama2mi182    false    602    25            �           0    0    supplier_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE jcbunagan.supplier_id_seq OWNED BY jcbunagan.supplier.id;
       	   jcbunagan          datama2mi182    false    601            �           2604    28011    customer id    DEFAULT     p   ALTER TABLE ONLY jcbunagan.customer ALTER COLUMN id SET DEFAULT nextval('jcbunagan.customer_id_seq'::regclass);
 =   ALTER TABLE jcbunagan.customer ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    604    603    604            �           2604    27910    employee id    DEFAULT     p   ALTER TABLE ONLY jcbunagan.employee ALTER COLUMN id SET DEFAULT nextval('jcbunagan.employee_id_seq'::regclass);
 =   ALTER TABLE jcbunagan.employee ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    584    583    584            �           2604    27924    food id    DEFAULT     h   ALTER TABLE ONLY jcbunagan.food ALTER COLUMN id SET DEFAULT nextval('jcbunagan.food_id_seq'::regclass);
 9   ALTER TABLE jcbunagan.food ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    586    585    586            �           2604    27934    ingredients id    DEFAULT     v   ALTER TABLE ONLY jcbunagan.ingredients ALTER COLUMN id SET DEFAULT nextval('jcbunagan.ingredients_id_seq'::regclass);
 @   ALTER TABLE jcbunagan.ingredients ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    588    587    588            �           2604    27942    order_detail id    DEFAULT     x   ALTER TABLE ONLY jcbunagan.order_detail ALTER COLUMN id SET DEFAULT nextval('jcbunagan.order_detail_id_seq'::regclass);
 A   ALTER TABLE jcbunagan.order_detail ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    589    590    590            �           2604    27952    order_header id    DEFAULT     x   ALTER TABLE ONLY jcbunagan.order_header ALTER COLUMN id SET DEFAULT nextval('jcbunagan.order_header_id_seq'::regclass);
 A   ALTER TABLE jcbunagan.order_header ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    591    592    592            �           2604    27962 
   payment id    DEFAULT     n   ALTER TABLE ONLY jcbunagan.payment ALTER COLUMN id SET DEFAULT nextval('jcbunagan.payment_id_seq'::regclass);
 <   ALTER TABLE jcbunagan.payment ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    593    594    594            �           2604    27970    purchase_order id    DEFAULT     |   ALTER TABLE ONLY jcbunagan.purchase_order ALTER COLUMN id SET DEFAULT nextval('jcbunagan.purchase_order_id_seq'::regclass);
 C   ALTER TABLE jcbunagan.purchase_order ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    596    595    596            �           2604    27981 	   recipe id    DEFAULT     l   ALTER TABLE ONLY jcbunagan.recipe ALTER COLUMN id SET DEFAULT nextval('jcbunagan.recipe_id_seq'::regclass);
 ;   ALTER TABLE jcbunagan.recipe ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    597    598    598            �           2604    27989    resto id    DEFAULT     j   ALTER TABLE ONLY jcbunagan.resto ALTER COLUMN id SET DEFAULT nextval('jcbunagan.resto_id_seq'::regclass);
 :   ALTER TABLE jcbunagan.resto ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    599    600    600            �           2604    28000    supplier id    DEFAULT     p   ALTER TABLE ONLY jcbunagan.supplier ALTER COLUMN id SET DEFAULT nextval('jcbunagan.supplier_id_seq'::regclass);
 =   ALTER TABLE jcbunagan.supplier ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    602    601    602            �          0    28008    customer 
   TABLE DATA           a   COPY jcbunagan.customer (id, cust_lname, cust_fname, cust_add, cust_phone, resto_id) FROM stdin;
 	   jcbunagan          datama2mi182    false    604            �          0    27907    employee 
   TABLE DATA           r   COPY jcbunagan.employee (id, emp_lname, emp_fname, emp_add, emp_email, emp_phone, emp_type, resto_id) FROM stdin;
 	   jcbunagan          datama2mi182    false    584            �          0    27921    food 
   TABLE DATA           G   COPY jcbunagan.food (id, food_name, food_price, food_type) FROM stdin;
 	   jcbunagan          datama2mi182    false    586            �          0    27931    ingredients 
   TABLE DATA           N   COPY jcbunagan.ingredients (id, ingredient_code, ingredient_desc) FROM stdin;
 	   jcbunagan          datama2mi182    false    588            �          0    27939    order_detail 
   TABLE DATA           X   COPY jcbunagan.order_detail (id, od_quantity, od_item, od_remarks, food_id) FROM stdin;
 	   jcbunagan          datama2mi182    false    590            �          0    27949    order_header 
   TABLE DATA           `   COPY jcbunagan.order_header (id, oh_date, order_stat, customer_id, order_detail_id) FROM stdin;
 	   jcbunagan          datama2mi182    false    592            �          0    27959    payment 
   TABLE DATA           �   COPY jcbunagan.payment (id, payment_amount_total, payment_amount_paid, payment_tax, payment_discount, payment_change, payment_reference_num, order_header_id) FROM stdin;
 	   jcbunagan          datama2mi182    false    594            �          0    27967    purchase_order 
   TABLE DATA           v   COPY jcbunagan.purchase_order (id, supplier_id, resto_id, po_order_date, po_delivery_date, po_order_stat) FROM stdin;
 	   jcbunagan          datama2mi182    false    596            �          0    27978    recipe 
   TABLE DATA           @   COPY jcbunagan.recipe (id, food_id, ingredients_id) FROM stdin;
 	   jcbunagan          datama2mi182    false    598            �          0    27986    resto 
   TABLE DATA           Q   COPY jcbunagan.resto (id, resto_name, resto_found_date, resto_owner) FROM stdin;
 	   jcbunagan          datama2mi182    false    600            �          0    27997    supplier 
   TABLE DATA           T   COPY jcbunagan.supplier (id, supplier_name, supplier_loc, partners_num) FROM stdin;
 	   jcbunagan          datama2mi182    false    602            �           0    0    customer_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('jcbunagan.customer_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    603            �           0    0    employee_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('jcbunagan.employee_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    583            �           0    0    food_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('jcbunagan.food_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    585            �           0    0    ingredients_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('jcbunagan.ingredients_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    587            �           0    0    order_detail_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('jcbunagan.order_detail_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    589            �           0    0    order_header_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('jcbunagan.order_header_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    591            �           0    0    payment_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('jcbunagan.payment_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    593            �           0    0    purchase_order_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('jcbunagan.purchase_order_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    595            �           0    0    recipe_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('jcbunagan.recipe_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    597            �           0    0    resto_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('jcbunagan.resto_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    599            �           0    0    supplier_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('jcbunagan.supplier_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    601            �           2606    28016    customer customer_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY jcbunagan.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY jcbunagan.customer DROP CONSTRAINT customer_pkey;
    	   jcbunagan            datama2mi182    false    604            �           2606    27918    employee employee_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY jcbunagan.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY jcbunagan.employee DROP CONSTRAINT employee_pkey;
    	   jcbunagan            datama2mi182    false    584            �           2606    27928    food food_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY jcbunagan.food
    ADD CONSTRAINT food_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY jcbunagan.food DROP CONSTRAINT food_pkey;
    	   jcbunagan            datama2mi182    false    586            �           2606    27936    ingredients ingredients_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY jcbunagan.ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY jcbunagan.ingredients DROP CONSTRAINT ingredients_pkey;
    	   jcbunagan            datama2mi182    false    588            �           2606    27946    order_detail order_detail_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY jcbunagan.order_detail
    ADD CONSTRAINT order_detail_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY jcbunagan.order_detail DROP CONSTRAINT order_detail_pkey;
    	   jcbunagan            datama2mi182    false    590            �           2606    27956    order_header order_header_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY jcbunagan.order_header
    ADD CONSTRAINT order_header_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY jcbunagan.order_header DROP CONSTRAINT order_header_pkey;
    	   jcbunagan            datama2mi182    false    592            �           2606    27964    payment payment_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY jcbunagan.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY jcbunagan.payment DROP CONSTRAINT payment_pkey;
    	   jcbunagan            datama2mi182    false    594            �           2606    27975 "   purchase_order purchase_order_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY jcbunagan.purchase_order
    ADD CONSTRAINT purchase_order_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY jcbunagan.purchase_order DROP CONSTRAINT purchase_order_pkey;
    	   jcbunagan            datama2mi182    false    596            �           2606    27983    recipe recipe_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY jcbunagan.recipe
    ADD CONSTRAINT recipe_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY jcbunagan.recipe DROP CONSTRAINT recipe_pkey;
    	   jcbunagan            datama2mi182    false    598            �           2606    27994    resto resto_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY jcbunagan.resto
    ADD CONSTRAINT resto_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY jcbunagan.resto DROP CONSTRAINT resto_pkey;
    	   jcbunagan            datama2mi182    false    600            �           2606    28005    supplier supplier_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY jcbunagan.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY jcbunagan.supplier DROP CONSTRAINT supplier_pkey;
    	   jcbunagan            datama2mi182    false    602            �           2606    29335    customer customer_resto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY jcbunagan.customer
    ADD CONSTRAINT customer_resto_fkey FOREIGN KEY (resto_id) REFERENCES jcbunagan.resto(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY jcbunagan.customer DROP CONSTRAINT customer_resto_fkey;
    	   jcbunagan          datama2mi182    false    4067    604    600            �           2606    29340    employee employee_resto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY jcbunagan.employee
    ADD CONSTRAINT employee_resto_fkey FOREIGN KEY (resto_id) REFERENCES jcbunagan.resto(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY jcbunagan.employee DROP CONSTRAINT employee_resto_fkey;
    	   jcbunagan          datama2mi182    false    584    4067    600            �           2606    29350 #   order_detail order_detail_food_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY jcbunagan.order_detail
    ADD CONSTRAINT order_detail_food_fkey FOREIGN KEY (food_id) REFERENCES jcbunagan.food(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 P   ALTER TABLE ONLY jcbunagan.order_detail DROP CONSTRAINT order_detail_food_fkey;
    	   jcbunagan          datama2mi182    false    590    4053    586            �           2606    29355 +   order_header order_header_order_detail_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY jcbunagan.order_header
    ADD CONSTRAINT order_header_order_detail_fkey FOREIGN KEY (order_detail_id) REFERENCES jcbunagan.order_detail(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 X   ALTER TABLE ONLY jcbunagan.order_header DROP CONSTRAINT order_header_order_detail_fkey;
    	   jcbunagan          datama2mi182    false    4057    592    590            �           2606    29361 !   payment payment_order_header_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY jcbunagan.payment
    ADD CONSTRAINT payment_order_header_fkey FOREIGN KEY (order_header_id) REFERENCES jcbunagan.order_header(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 N   ALTER TABLE ONLY jcbunagan.payment DROP CONSTRAINT payment_order_header_fkey;
    	   jcbunagan          datama2mi182    false    4059    592    594            �           2606    29330 (   purchase_order purchase_order_resto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY jcbunagan.purchase_order
    ADD CONSTRAINT purchase_order_resto_fkey FOREIGN KEY (resto_id) REFERENCES jcbunagan.resto(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 U   ALTER TABLE ONLY jcbunagan.purchase_order DROP CONSTRAINT purchase_order_resto_fkey;
    	   jcbunagan          datama2mi182    false    596    4067    600            �      x�=�1�0���ˏ����Vqst9HI!B���^
qy^�C�&I�~K�K��)����$�U�Mˌ��]3�8�V[���m�Z�1E�GK�{1�`Z��&<7�ڃ$g��i�Ŧ|.ι�0�      �      x������ � �      �   x   x�3400�t��L�N�SN�K)�L��4�䄱��8CJ�qJsz&�*8�&�"Ԙ��1�[R�Y������ia�	�|Ss@j�8C�2�K�KS��8��F�&g&�@���qqq ��58      �      x������ � �      �   {   x�3200�4�t��L�N�S(�,�P�LN�Q�LNUp.JM�UN�K)�L��Q�/��N,).M�����4400�2200�4�S�7��1̓�0�0��b�H�$W����ш+F��� �6#      �   ]   x�3�420��54�56�tI��,K-JM�4
�pAeu9��
KSKS9�@��\�X%-@��\&I�$�<C.S��9B����+F��� آ �      �   '   x�320�44064�44��446�A �� Hp��qqq mch      �      x������ � �      �      x�344�441�4����� !      �   0   x�3�N,MNUp�HM�4204�#΀Ē��l����ļ�T�=... ��      �      x������ � �      Y    �           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16388    datama2_mi182    DATABASE     p   CREATE DATABASE datama2_mi182 WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE datama2_mi182;
                datama2mi182    false                        2615    18541 	   jcbunagan    SCHEMA        CREATE SCHEMA jcbunagan;
    DROP SCHEMA jcbunagan;
                datama2mi182    false            \           1259    28008    customer    TABLE     f  CREATE TABLE jcbunagan.customer (
    id integer NOT NULL,
    cust_lname character varying(9) DEFAULT NULL::character varying NOT NULL,
    cust_fname character varying(8) DEFAULT NULL::character varying NOT NULL,
    cust_add character varying(6) DEFAULT NULL::character varying NOT NULL,
    cust_phone integer NOT NULL,
    resto_id smallint NOT NULL
);
    DROP TABLE jcbunagan.customer;
    	   jcbunagan            datama2mi182    false    25            [           1259    28006    customer_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE jcbunagan.customer_id_seq;
    	   jcbunagan          datama2mi182    false    25    604            �           0    0    customer_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE jcbunagan.customer_id_seq OWNED BY jcbunagan.customer.id;
       	   jcbunagan          datama2mi182    false    603            P           1259    27949    order_header    TABLE     %  CREATE TABLE jcbunagan.order_header (
    id integer NOT NULL,
    oh_date character varying(10) DEFAULT NULL::character varying NOT NULL,
    order_stat character varying(9) DEFAULT NULL::character varying NOT NULL,
    customer_id smallint NOT NULL,
    order_detail_id smallint NOT NULL
);
 #   DROP TABLE jcbunagan.order_header;
    	   jcbunagan            datama2mi182    false    25            _           1259    28076    customer_order    VIEW     d  CREATE VIEW jcbunagan.customer_order AS
 SELECT customer.id,
    customer.cust_lname,
    customer.cust_fname,
    customer.cust_add,
    customer.cust_phone,
    order_header.oh_date,
    order_header.order_stat,
    order_header.order_detail_id
   FROM (jcbunagan.customer
     JOIN jcbunagan.order_header ON ((order_header.customer_id = customer.id)));
 $   DROP VIEW jcbunagan.customer_order;
    	   jcbunagan          datama2mi182    false    604    592    604    604    592    604    604    592    592    25            H           1259    27907    employee    TABLE       CREATE TABLE jcbunagan.employee (
    id integer NOT NULL,
    emp_lname character varying(1) DEFAULT NULL::character varying NOT NULL,
    emp_fname character varying(1) DEFAULT NULL::character varying NOT NULL,
    emp_add character varying(1) DEFAULT NULL::character varying NOT NULL,
    emp_email character varying(1) DEFAULT NULL::character varying,
    emp_phone character varying(1) DEFAULT NULL::character varying,
    emp_type character varying(1) DEFAULT NULL::character varying NOT NULL,
    resto_id smallint NOT NULL
);
    DROP TABLE jcbunagan.employee;
    	   jcbunagan            datama2mi182    false    25            G           1259    27905    employee_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE jcbunagan.employee_id_seq;
    	   jcbunagan          datama2mi182    false    584    25            �           0    0    employee_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE jcbunagan.employee_id_seq OWNED BY jcbunagan.employee.id;
       	   jcbunagan          datama2mi182    false    583            J           1259    27921    food    TABLE     �   CREATE TABLE jcbunagan.food (
    id integer NOT NULL,
    food_name character varying(18) DEFAULT NULL::character varying NOT NULL,
    food_price smallint NOT NULL,
    food_type character varying(12) DEFAULT NULL::character varying NOT NULL
);
    DROP TABLE jcbunagan.food;
    	   jcbunagan            datama2mi182    false    25            I           1259    27919    food_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.food_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE jcbunagan.food_id_seq;
    	   jcbunagan          datama2mi182    false    25    586            �           0    0    food_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE jcbunagan.food_id_seq OWNED BY jcbunagan.food.id;
       	   jcbunagan          datama2mi182    false    585            L           1259    27931    ingredients    TABLE     |   CREATE TABLE jcbunagan.ingredients (
    id integer NOT NULL,
    ingredient_code smallint,
    ingredient_desc smallint
);
 "   DROP TABLE jcbunagan.ingredients;
    	   jcbunagan            datama2mi182    false    25            K           1259    27929    ingredients_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.ingredients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE jcbunagan.ingredients_id_seq;
    	   jcbunagan          datama2mi182    false    25    588            �           0    0    ingredients_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE jcbunagan.ingredients_id_seq OWNED BY jcbunagan.ingredients.id;
       	   jcbunagan          datama2mi182    false    587            N           1259    27939    order_detail    TABLE       CREATE TABLE jcbunagan.order_detail (
    id integer NOT NULL,
    od_quantity smallint NOT NULL,
    od_item character varying(51) DEFAULT NULL::character varying NOT NULL,
    od_remarks character varying(1) DEFAULT NULL::character varying,
    food_id smallint NOT NULL
);
 #   DROP TABLE jcbunagan.order_detail;
    	   jcbunagan            datama2mi182    false    25            M           1259    27937    order_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.order_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE jcbunagan.order_detail_id_seq;
    	   jcbunagan          datama2mi182    false    25    590            �           0    0    order_detail_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE jcbunagan.order_detail_id_seq OWNED BY jcbunagan.order_detail.id;
       	   jcbunagan          datama2mi182    false    589            O           1259    27947    order_header_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.order_header_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE jcbunagan.order_header_id_seq;
    	   jcbunagan          datama2mi182    false    25    592            �           0    0    order_header_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE jcbunagan.order_header_id_seq OWNED BY jcbunagan.order_header.id;
       	   jcbunagan          datama2mi182    false    591            R           1259    27959    payment    TABLE     4  CREATE TABLE jcbunagan.payment (
    id integer NOT NULL,
    payment_amount_total smallint NOT NULL,
    payment_amount_paid smallint NOT NULL,
    payment_tax smallint,
    payment_discount smallint,
    payment_change smallint,
    payment_reference_num smallint,
    order_header_id smallint NOT NULL
);
    DROP TABLE jcbunagan.payment;
    	   jcbunagan            datama2mi182    false    25            Q           1259    27957    payment_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE jcbunagan.payment_id_seq;
    	   jcbunagan          datama2mi182    false    594    25            �           0    0    payment_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE jcbunagan.payment_id_seq OWNED BY jcbunagan.payment.id;
       	   jcbunagan          datama2mi182    false    593            T           1259    27967    purchase_order    TABLE     |  CREATE TABLE jcbunagan.purchase_order (
    id integer NOT NULL,
    supplier_id smallint NOT NULL,
    resto_id smallint NOT NULL,
    po_order_date character varying(1) DEFAULT NULL::character varying NOT NULL,
    po_delivery_date character varying(1) DEFAULT NULL::character varying NOT NULL,
    po_order_stat character varying(1) DEFAULT NULL::character varying NOT NULL
);
 %   DROP TABLE jcbunagan.purchase_order;
    	   jcbunagan            datama2mi182    false    25            S           1259    27965    purchase_order_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.purchase_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE jcbunagan.purchase_order_id_seq;
    	   jcbunagan          datama2mi182    false    25    596            �           0    0    purchase_order_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE jcbunagan.purchase_order_id_seq OWNED BY jcbunagan.purchase_order.id;
       	   jcbunagan          datama2mi182    false    595            V           1259    27978    recipe    TABLE     �   CREATE TABLE jcbunagan.recipe (
    id integer NOT NULL,
    food_id smallint NOT NULL,
    ingredients_id smallint NOT NULL
);
    DROP TABLE jcbunagan.recipe;
    	   jcbunagan            datama2mi182    false    25            U           1259    27976    recipe_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.recipe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE jcbunagan.recipe_id_seq;
    	   jcbunagan          datama2mi182    false    25    598            �           0    0    recipe_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE jcbunagan.recipe_id_seq OWNED BY jcbunagan.recipe.id;
       	   jcbunagan          datama2mi182    false    597            X           1259    27986    resto    TABLE     .  CREATE TABLE jcbunagan.resto (
    id integer NOT NULL,
    resto_name character varying(10) DEFAULT NULL::character varying NOT NULL,
    resto_found_date character varying(10) DEFAULT NULL::character varying NOT NULL,
    resto_owner character varying(14) DEFAULT NULL::character varying NOT NULL
);
    DROP TABLE jcbunagan.resto;
    	   jcbunagan            datama2mi182    false    25            W           1259    27984    resto_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.resto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE jcbunagan.resto_id_seq;
    	   jcbunagan          datama2mi182    false    600    25            �           0    0    resto_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE jcbunagan.resto_id_seq OWNED BY jcbunagan.resto.id;
       	   jcbunagan          datama2mi182    false    599            Z           1259    27997    supplier    TABLE     .  CREATE TABLE jcbunagan.supplier (
    id integer NOT NULL,
    supplier_name character varying(1) DEFAULT NULL::character varying NOT NULL,
    supplier_loc character varying(1) DEFAULT NULL::character varying NOT NULL,
    partners_num character varying(1) DEFAULT NULL::character varying NOT NULL
);
    DROP TABLE jcbunagan.supplier;
    	   jcbunagan            datama2mi182    false    25            Y           1259    27995    supplier_id_seq    SEQUENCE     �   CREATE SEQUENCE jcbunagan.supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE jcbunagan.supplier_id_seq;
    	   jcbunagan          datama2mi182    false    602    25            �           0    0    supplier_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE jcbunagan.supplier_id_seq OWNED BY jcbunagan.supplier.id;
       	   jcbunagan          datama2mi182    false    601            �           2604    28011    customer id    DEFAULT     p   ALTER TABLE ONLY jcbunagan.customer ALTER COLUMN id SET DEFAULT nextval('jcbunagan.customer_id_seq'::regclass);
 =   ALTER TABLE jcbunagan.customer ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    604    603    604            �           2604    27910    employee id    DEFAULT     p   ALTER TABLE ONLY jcbunagan.employee ALTER COLUMN id SET DEFAULT nextval('jcbunagan.employee_id_seq'::regclass);
 =   ALTER TABLE jcbunagan.employee ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    584    583    584            �           2604    27924    food id    DEFAULT     h   ALTER TABLE ONLY jcbunagan.food ALTER COLUMN id SET DEFAULT nextval('jcbunagan.food_id_seq'::regclass);
 9   ALTER TABLE jcbunagan.food ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    586    585    586            �           2604    27934    ingredients id    DEFAULT     v   ALTER TABLE ONLY jcbunagan.ingredients ALTER COLUMN id SET DEFAULT nextval('jcbunagan.ingredients_id_seq'::regclass);
 @   ALTER TABLE jcbunagan.ingredients ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    588    587    588            �           2604    27942    order_detail id    DEFAULT     x   ALTER TABLE ONLY jcbunagan.order_detail ALTER COLUMN id SET DEFAULT nextval('jcbunagan.order_detail_id_seq'::regclass);
 A   ALTER TABLE jcbunagan.order_detail ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    589    590    590            �           2604    27952    order_header id    DEFAULT     x   ALTER TABLE ONLY jcbunagan.order_header ALTER COLUMN id SET DEFAULT nextval('jcbunagan.order_header_id_seq'::regclass);
 A   ALTER TABLE jcbunagan.order_header ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    591    592    592            �           2604    27962 
   payment id    DEFAULT     n   ALTER TABLE ONLY jcbunagan.payment ALTER COLUMN id SET DEFAULT nextval('jcbunagan.payment_id_seq'::regclass);
 <   ALTER TABLE jcbunagan.payment ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    593    594    594            �           2604    27970    purchase_order id    DEFAULT     |   ALTER TABLE ONLY jcbunagan.purchase_order ALTER COLUMN id SET DEFAULT nextval('jcbunagan.purchase_order_id_seq'::regclass);
 C   ALTER TABLE jcbunagan.purchase_order ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    596    595    596            �           2604    27981 	   recipe id    DEFAULT     l   ALTER TABLE ONLY jcbunagan.recipe ALTER COLUMN id SET DEFAULT nextval('jcbunagan.recipe_id_seq'::regclass);
 ;   ALTER TABLE jcbunagan.recipe ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    597    598    598            �           2604    27989    resto id    DEFAULT     j   ALTER TABLE ONLY jcbunagan.resto ALTER COLUMN id SET DEFAULT nextval('jcbunagan.resto_id_seq'::regclass);
 :   ALTER TABLE jcbunagan.resto ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    599    600    600            �           2604    28000    supplier id    DEFAULT     p   ALTER TABLE ONLY jcbunagan.supplier ALTER COLUMN id SET DEFAULT nextval('jcbunagan.supplier_id_seq'::regclass);
 =   ALTER TABLE jcbunagan.supplier ALTER COLUMN id DROP DEFAULT;
    	   jcbunagan          datama2mi182    false    602    601    602            �          0    28008    customer 
   TABLE DATA           a   COPY jcbunagan.customer (id, cust_lname, cust_fname, cust_add, cust_phone, resto_id) FROM stdin;
 	   jcbunagan          datama2mi182    false    604            �          0    27907    employee 
   TABLE DATA           r   COPY jcbunagan.employee (id, emp_lname, emp_fname, emp_add, emp_email, emp_phone, emp_type, resto_id) FROM stdin;
 	   jcbunagan          datama2mi182    false    584   �        �          0    27921    food 
   TABLE DATA           G   COPY jcbunagan.food (id, food_name, food_price, food_type) FROM stdin;
 	   jcbunagan          datama2mi182    false    586           �          0    27931    ingredients 
   TABLE DATA           N   COPY jcbunagan.ingredients (id, ingredient_code, ingredient_desc) FROM stdin;
 	   jcbunagan          datama2mi182    false    588   �        �          0    27939    order_detail 
   TABLE DATA           X   COPY jcbunagan.order_detail (id, od_quantity, od_item, od_remarks, food_id) FROM stdin;
 	   jcbunagan          datama2mi182    false    590           �          0    27949    order_header 
   TABLE DATA           `   COPY jcbunagan.order_header (id, oh_date, order_stat, customer_id, order_detail_id) FROM stdin;
 	   jcbunagan          datama2mi182    false    592   �        �          0    27959    payment 
   TABLE DATA           �   COPY jcbunagan.payment (id, payment_amount_total, payment_amount_paid, payment_tax, payment_discount, payment_change, payment_reference_num, order_header_id) FROM stdin;
 	   jcbunagan          datama2mi182    false    594   g        �          0    27967    purchase_order 
   TABLE DATA           v   COPY jcbunagan.purchase_order (id, supplier_id, resto_id, po_order_date, po_delivery_date, po_order_stat) FROM stdin;
 	   jcbunagan          datama2mi182    false    596   1        �          0    27978    recipe 
   TABLE DATA           @   COPY jcbunagan.recipe (id, food_id, ingredients_id) FROM stdin;
 	   jcbunagan          datama2mi182    false    598           �          0    27986    resto 
   TABLE DATA           Q   COPY jcbunagan.resto (id, resto_name, resto_found_date, resto_owner) FROM stdin;
 	   jcbunagan          datama2mi182    false    600   !        �          0    27997    supplier 
   TABLE DATA           T   COPY jcbunagan.supplier (id, supplier_name, supplier_loc, partners_num) FROM stdin;
 	   jcbunagan          datama2mi182    false    602   :        �           0    0    customer_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('jcbunagan.customer_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    603            �           0    0    employee_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('jcbunagan.employee_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    583            �           0    0    food_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('jcbunagan.food_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    585            �           0    0    ingredients_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('jcbunagan.ingredients_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    587            �           0    0    order_detail_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('jcbunagan.order_detail_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    589            �           0    0    order_header_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('jcbunagan.order_header_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    591            �           0    0    payment_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('jcbunagan.payment_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    593            �           0    0    purchase_order_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('jcbunagan.purchase_order_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    595            �           0    0    recipe_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('jcbunagan.recipe_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    597            �           0    0    resto_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('jcbunagan.resto_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    599            �           0    0    supplier_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('jcbunagan.supplier_id_seq', 1, false);
       	   jcbunagan          datama2mi182    false    601            �           2606    28016    customer customer_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY jcbunagan.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY jcbunagan.customer DROP CONSTRAINT customer_pkey;
    	   jcbunagan            datama2mi182    false    604            �           2606    27918    employee employee_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY jcbunagan.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY jcbunagan.employee DROP CONSTRAINT employee_pkey;
    	   jcbunagan            datama2mi182    false    584            �           2606    27928    food food_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY jcbunagan.food
    ADD CONSTRAINT food_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY jcbunagan.food DROP CONSTRAINT food_pkey;
    	   jcbunagan            datama2mi182    false    586            �           2606    27936    ingredients ingredients_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY jcbunagan.ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY jcbunagan.ingredients DROP CONSTRAINT ingredients_pkey;
    	   jcbunagan            datama2mi182    false    588            �           2606    27946    order_detail order_detail_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY jcbunagan.order_detail
    ADD CONSTRAINT order_detail_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY jcbunagan.order_detail DROP CONSTRAINT order_detail_pkey;
    	   jcbunagan            datama2mi182    false    590            �           2606    27956    order_header order_header_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY jcbunagan.order_header
    ADD CONSTRAINT order_header_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY jcbunagan.order_header DROP CONSTRAINT order_header_pkey;
    	   jcbunagan            datama2mi182    false    592            �           2606    27964    payment payment_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY jcbunagan.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY jcbunagan.payment DROP CONSTRAINT payment_pkey;
    	   jcbunagan            datama2mi182    false    594            �           2606    27975 "   purchase_order purchase_order_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY jcbunagan.purchase_order
    ADD CONSTRAINT purchase_order_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY jcbunagan.purchase_order DROP CONSTRAINT purchase_order_pkey;
    	   jcbunagan            datama2mi182    false    596            �           2606    27983    recipe recipe_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY jcbunagan.recipe
    ADD CONSTRAINT recipe_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY jcbunagan.recipe DROP CONSTRAINT recipe_pkey;
    	   jcbunagan            datama2mi182    false    598            �           2606    27994    resto resto_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY jcbunagan.resto
    ADD CONSTRAINT resto_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY jcbunagan.resto DROP CONSTRAINT resto_pkey;
    	   jcbunagan            datama2mi182    false    600            �           2606    28005    supplier supplier_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY jcbunagan.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY jcbunagan.supplier DROP CONSTRAINT supplier_pkey;
    	   jcbunagan            datama2mi182    false    602            �           2606    29335    customer customer_resto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY jcbunagan.customer
    ADD CONSTRAINT customer_resto_fkey FOREIGN KEY (resto_id) REFERENCES jcbunagan.resto(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY jcbunagan.customer DROP CONSTRAINT customer_resto_fkey;
    	   jcbunagan          datama2mi182    false    4067    604    600            �           2606    29340    employee employee_resto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY jcbunagan.employee
    ADD CONSTRAINT employee_resto_fkey FOREIGN KEY (resto_id) REFERENCES jcbunagan.resto(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY jcbunagan.employee DROP CONSTRAINT employee_resto_fkey;
    	   jcbunagan          datama2mi182    false    584    4067    600            �           2606    29350 #   order_detail order_detail_food_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY jcbunagan.order_detail
    ADD CONSTRAINT order_detail_food_fkey FOREIGN KEY (food_id) REFERENCES jcbunagan.food(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 P   ALTER TABLE ONLY jcbunagan.order_detail DROP CONSTRAINT order_detail_food_fkey;
    	   jcbunagan          datama2mi182    false    590    4053    586            �           2606    29355 +   order_header order_header_order_detail_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY jcbunagan.order_header
    ADD CONSTRAINT order_header_order_detail_fkey FOREIGN KEY (order_detail_id) REFERENCES jcbunagan.order_detail(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 X   ALTER TABLE ONLY jcbunagan.order_header DROP CONSTRAINT order_header_order_detail_fkey;
    	   jcbunagan          datama2mi182    false    4057    592    590            �           2606    29361 !   payment payment_order_header_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY jcbunagan.payment
    ADD CONSTRAINT payment_order_header_fkey FOREIGN KEY (order_header_id) REFERENCES jcbunagan.order_header(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 N   ALTER TABLE ONLY jcbunagan.payment DROP CONSTRAINT payment_order_header_fkey;
    	   jcbunagan          datama2mi182    false    4059    592    594            �           2606    29330 (   purchase_order purchase_order_resto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY jcbunagan.purchase_order
    ADD CONSTRAINT purchase_order_resto_fkey FOREIGN KEY (resto_id) REFERENCES jcbunagan.resto(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 U   ALTER TABLE ONLY jcbunagan.purchase_order DROP CONSTRAINT purchase_order_resto_fkey;
    	   jcbunagan          datama2mi182    false    596    4067    600           