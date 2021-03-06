1. SELECT * FROM customers;

2. SELECT customers.country from customers

3. SELECT * FROM customers WHERE customer_id LIKE 'BL%';

4. SELECT * FROM orders LIMIT 100;

5. SELECT * FROM customers WHERE postal_code='1010' OR postal_code='3012' OR postal_code='12209' OR postal_code='05023' ;

6. SELECT * FROM orders WHERE ship_region<>'null';

7. SELECT * FROM orders ORDER BY ship_country, ship_city;

8. INSERT INTO customers(customer_id,company_name,contact_name) VALUES('PUNCC','WHITECAPSINC','Curtis Punches');

9. UPDATE orders SET ship_region='EuroZone' WHERE ship_country='France';

10. DELETE FROM order_details WHERE quantity=1;

11. SELECT AVG(quantity) FROM order_details;
    SELECT MAX(quantity) FROM order_details;
    SELECT MIN(quantity) FROM order_details;

12. SELECT AVG(quantity) FROM order_details GROUP BY order_id;
    SELECT MAX(quantity) FROM order_details GROUP BY order_id;
    SELECT MIN(quantity) FROM order_details GROUP BY order_id;

13. SELECT customer_id FROM orders  WHERE order_id='10290';

14. SELECT * FROM orders 
    INNER JOIN customers ON orders.customer_id = customers.customer_id;
    SELECT * FROM orders 
    LEFT JOIN customers ON orders.customer_id = customers.customer_id;
    SELECT * FROM orders 
    RIGHT JOIN customers ON orders.customer_id = customers.customer_id;

15. SELECT ship_city, ship_country FROM orders 
    JOIN employees ON orders.employee_id = employees.employee_id
    WHERE employees.city='London';

16. SELECT ship_name FROM orders 
    JOIN order_details ON orders.order_id = order_details.order_id
    JOIN products ON order_details.product_id = products.product_id
    WHERE products.discontinued='1';

17. SELECT * FROM employees as subordinate JOIN employees as manager on subordinate.reports_to = manager.employee_id;

18. SELECT * FROM employees as subordinate JOIN employees as manager on subordinate.reports_to = manager.employee_id
    WHERE manager.first_name='Andrew';
