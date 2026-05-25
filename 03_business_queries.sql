
-- BUSINESS KPI QUERIES
-- Retail Analytics Project


-- 1. Gesamtumsatz (KPI)
SELECT SUM(total_price) AS total_revenue
FROM sales;


-- 2. Anzahl aller Verkäufe
SELECT COUNT(*) AS total_transactions
FROM sales;


-- 3. Durchschnittlicher Bestellwert (AOV)
SELECT AVG(total_price) AS avg_order_value
FROM sales;



-- CUSTOMER ANALYSIS


-- 4. Umsatz pro Kunde
SELECT customer_id, SUM(total_price) AS revenue
FROM sales
GROUP BY customer_id
ORDER BY revenue DESC;


-- 5. Top 3 Kunden nach Umsatz
SELECT customer_id, SUM(total_price) AS revenue
FROM sales
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 3;


-- 6. Kunden nach Stadt (Umsatz)
SELECT c.city, SUM(s.total_price) AS revenue
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.city
ORDER BY revenue DESC;



-- PRODUCT ANALYSIS


-- 7. Meistverkaufte Produkte (Menge)
SELECT product_id, SUM(quantity) AS total_sold
FROM sales
GROUP BY product_id
ORDER BY total_sold DESC;


-- 8. Umsatz pro Produkt
SELECT product_id, SUM(total_price) AS revenue
FROM sales
GROUP BY product_id
ORDER BY revenue DESC;


-- 9. Umsatz nach Produktkategorie
SELECT p.category, SUM(s.total_price) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;



-- TIME / SALES TREND ANALYSIS


-- 10. Umsatz pro Tag
SELECT date_id, SUM(total_price) AS revenue
FROM sales
GROUP BY date_id
ORDER BY date_id;


-- 11. Beste Verkaufstage
SELECT date_id, SUM(total_price) AS revenue
FROM sales
GROUP BY date_id
ORDER BY revenue DESC
LIMIT 5;



-- BUSINESS INSIGHTS


-- 12. Kunden mit nur einem Kauf
SELECT customer_id, COUNT(*) AS purchases
FROM sales
GROUP BY customer_id
HAVING COUNT(*) = 1;


-- 13. Produkte mit geringster Nachfrage
SELECT product_id, SUM(quantity) AS total_sold
FROM sales
GROUP BY product_id
ORDER BY total_sold ASC;


-- 14. Umsatzverteilung (zeigt Konzentration)
SELECT customer_id, SUM(total_price) AS revenue
FROM sales
GROUP BY customer_id
ORDER BY revenue DESC;
