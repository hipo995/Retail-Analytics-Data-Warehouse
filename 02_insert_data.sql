  \\1. CUSTOMERS DATA
INSERT INTO customers (customer_id, name, city, signup_date) VALUES
(1, 'Anna Müller', 'Berlin', '2023-01-10'),
(2, 'Max Schmidt', 'Hamburg', '2023-02-15'),
(3, 'Laura Becker', 'München', '2023-03-20'),
(4, 'Jonas Weber', 'Köln', '2023-04-05'),
(5, 'Sophie Klein', 'Frankfurt', '2023-05-12'),
(6, 'Lukas Fischer', 'Stuttgart', '2023-06-18'),
(7, 'Emma Wagner', 'Düsseldorf', '2023-07-22');

  \\2. PRODUCTS DATA
  INSERT INTO products (product_id, name, category, price) VALUES
(1, 'Laptop', 'Electronics', 1200),
(2, 'Headphones', 'Electronics', 150),
(3, 'Desk Chair', 'Furniture', 300),
(4, 'Smartphone', 'Electronics', 800),
(5, 'Monitor', 'Electronics', 250),
(6, 'Keyboard', 'Electronics', 80),
(7, 'Office Desk', 'Furniture', 500);

  \\3.SALES DATA (FACT TABLE)
  INSERT INTO sales (sale_id, customer_id, product_id, date_id, quantity, total_price) VALUES
(1, 1, 1, 20230110, 1, 1200),
(2, 2, 2, 20230215, 2, 300),
(3, 3, 3, 20230320, 1, 300),
(4, 4, 4, 20230410, 1, 800),
(5, 5, 5, 20230515, 2, 500),
(6, 6, 6, 20230620, 3, 240),
(7, 7, 7, 20230725, 1, 500),
(8, 1, 2, 20230112, 1, 150),
(9, 2, 3, 20230220, 2, 600),
(10, 3, 1, 20230330, 1, 1200),
(11, 4, 5, 20230418, 1, 250),
(12, 5, 6, 20230522, 2, 160),
(13, 6, 7, 20230628, 1, 500),
(14, 7, 4, 20230730, 1, 800);
