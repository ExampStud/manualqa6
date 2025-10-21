--1
SELECT * 
FROM products;
--2
SELECT name, price
FROM products;
--3
SELECT * 
FROM products
WHERE category = '?????????' ;
--4
SELECT * 
FROM products
WHERE  price > 500;
--5
SELECT * 
FROM products
ORDER BY price DESC;
--6
SELECT COUNT(NAME), CATEGORY
FROM PRODUCTS 
GROUP BY CATEGORY;
--7
SELECT AVG (PRICE) AS AVERAGE_PRICE
FROM PRODUCTS;
--8
SELECT products.name, COUNT (orders.quantity) 
FROM products
JOIN orders ON products.id = orders.id
--WHERE ROWNUM <=1
GROUP BY products.name
ORDER BY COUNT (orders.quantity) DESC;
--9
SELECT  *
FROM CUSTOMERS
JOIN ORDERS
    ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID
JOIN PRODUCTS
    ON ORDERS.PRODUCT_ID=PRODUCTS.id
WHERE customers.name = '??????';
--10
SELECT SUM (products.price*orders.quantity) 
FROM products
JOIN  orders 
ON products.id = orders.product_id;
--11
SELECT * 
FROM customers
JOIN orders 
ON customers.id = orders.customer_id;
--12
SELECT * 
FROM customers
LEFT JOIN orders 
ON customers.id = orders.customer_id;
--13
SELECT * 
FROM customers
FULL JOIN orders 
ON customers.id = orders.customer_id;
--14
SELECT * 
FROM products 
LEFT JOIN orders ON products.id = orders.product_id 
WHERE orders.quantity IS NULL or orders.quantity = 0;
--15
SELECT customers.id as customer_id, COUNT (orders.id)
FROM customers
JOIN orders 
ON customers.id = orders.customer_id
GROUP BY customers.id
Having COUNT (orders.id) > 1;