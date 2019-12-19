CREATE VIEW customer_order AS
 SELECT _customer.id,
    customer.cust_lname,
    customer.cust_fname,
    customer.cust_add,
    customer.cust_phone,
    order_header.oh_date,
    order_header.order_stat,
    order_header.order_detail_id
   FROM (jcbunagan._customer);
   
  
  
  
  
  
  
  
  