
-- DATA QUALITY CHECKS
-- Retail Sales Analytics Project


 1. Check for NULL values (customers)
SELECT *
FROM customers
WHERE name IS NULL
   OR city IS NULL
   OR signup_date IS NULL;


 2. Check for NULL values (products)
SELECT *
FROM products
WHERE name IS NULL
   OR category IS NULL
   OR price IS NULL;


 3. Check for invalid sales (negative or zero values)
SELECT *
FROM sales
WHERE quantity <= 0
   OR total_price <= 0;


 4. Check for orphaned foreign keys (sales without valid customer)
SELECT *
FROM sales
WHERE customer_id NOT IN (SELECT customer_id FROM customers);


 5. Check for orphaned foreign keys (sales without valid product)
SELECT *
FROM sales
WHERE product_id NOT IN (SELECT product_id FROM products);


6. Check for duplicate customers
SELECT customer_id, COUNT(*) AS count
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;


 7. Check for duplicate products
SELECT product_id, COUNT(*) AS count
FROM products
GROUP BY product_id
HAVING COUNT(*) > 1;


 8. Check for duplicate sales records
SELECT sale_id, COUNT(*) AS count
FROM sales
GROUP BY sale_id
HAVING COUNT(*) > 1;


 9. Check for inconsistent city naming (case issues)
SELECT DISTINCT city
FROM customers
ORDER BY city;


 10. Check revenue anomalies (very high values)
SELECT *
FROM sales
WHERE total_price > 5000;


 11. Validate logical consistency (price * quantity vs total_price)
 (optional check if you assume unit price logic)
SELECT *
FROM sales s
JOIN products p ON s.product_id = p.product_id
WHERE s.total_price != (s.quantity * p.price);
