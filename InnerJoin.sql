SELECT categories.id,
categories.name as category_name, categories.description as category_description, customers.id as customer_id,
customers.name as customer_name, customers.contact as customer_contact, customers.address as customer_address,
customers.city as customer_city, customers.postal_code as customer_postal_code, customers.country as customer_country,
employees.employee_id, employees.last_name as employee_last_name, employees.first_name as employee_first_name,
employees.birthdate as employee_birthdate, employees.photo as employee_photo, employees.notes as employee_notes,
order_details.id as order_detail_id, order_details.quantity as order_detail_quantity, 
orders.id as order_id, orders.date as order_date,
products.id as product_id, products.name as product_name, products.unit as product_unit, products.price as product_price,
shippers.id as shipper_id, shippers.name as shipper_name, shippers.phone as shipper_phone,
suppliers.id as supplier_id, suppliers.name as supplier_name, suppliers.contact as supplier_contact,
suppliers.address as supplier_address, suppliers.city as supplier_city, suppliers.postal_code as supplier_postal_code,
suppliers.country as supplier_country, suppliers.phone as supplier_phone
FROM orders
INNER JOIN order_details ON orders.id = order_details.order_id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN products ON products.id = order_details.product_id
INNER JOIN suppliers ON suppliers.id = products.supplier_id
INNER JOIN categories ON categories.id = products.category_id;

