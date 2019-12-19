CREATE VIEW resto_supplier 
AS SELECT supplier.supplier_name, resto.resto_name
FROM supplier,resto
WHERE supplier.resto_id=resto.id;