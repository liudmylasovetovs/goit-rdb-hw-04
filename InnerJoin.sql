SELECT COUNT(categories.name) as category_name, AVG(order_details.quantity) as quantity_ord
FROM orders
INNER JOIN order_details ON orders.id = order_details.order_id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
INNER JOIN categories ON products.category_id = categories.id
WHERE employees.employee_id > 3 AND employees.employee_id <= 10
GROUP BY categories.name
HAVING quantity_ord > 21
ORDER BY category_name DESC
LIMIT 4
OFFSET 1;




