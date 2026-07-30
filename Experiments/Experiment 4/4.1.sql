-- Customers and Orders: List the customer_name and order_date for all customers who have placed orders.
SELECT customer_name, order_date
FROM 
customers as c 
JOIN
orders as o
on c.customer_id = o.customer_id;

-- All Customers and Their Orders: List all customer names and their corresponding product_name from orders, if they have any. Include customers even if they haven't placed any orders.
SELECT customer_name, product_name
FROM 
customers as c 
Left JOIN 
orders as o
on c.customer_id = o.customer_id;

-- Find Products and Their Orders: Display Product Name and the order_date from all the products that are ordered.
SELECT p.product_name, order_date
FROM
products as p
JOIN
orders as o
on p.product_name = o.product_name;