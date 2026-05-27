Retail Sales Analytics Data Warehouse (SQLite + SQL)

Project Overview

This project simulates a retail analytics data warehouse using SQLite. It demonstrates how transactional sales data can be structured into a relational model and analyzed to generate business insights.

The project reflects a simplified version of data warehouse systems used in organizations for reporting and decision-making.

Business Objectives

The objective of this project is to answer key analytical questions:

- What is the total revenue?
- Who are the most valuable customers?
- Which products perform best?
- How does revenue evolve over time?
- Which product categories generate the most sales?

Data Model

The database follows a star schema design consisting of dimension tables and a central fact table.

Dimension Tables

customers
- customer_id (Primary Key)
- name
- city
- signup_date

products
- product_id (Primary Key)
- name
- category
- price

Fact Table

sales
- sale_id (Primary Key)
- customer_id (Foreign Key)
- product_id (Foreign Key)
- date_id
- quantity
- total_price

Technologies Used

- SQLite
- SQL
- DB Browser for SQLite (or any SQL editor)

Data Setup

The database is created in three steps:

01_create_tables.sql     - Schema creation
02_insert_data.sql       - Data insertion
03_business_queries.sql  - Analytical queries

Key Analysis

Business Metrics
- Total revenue
- Number of transactions
- Average order value

Customer Analysis
- Revenue per customer
- Top customers
- Revenue by city

Product Analysis
- Best-selling products
- Revenue per product
- Category performance

Time Analysis
- Revenue trends over time
- Best-performing periods

Performance Optimization

To improve query performance and simulate real-world scalability, indexing strategies were implemented.

Indexing Strategy

CREATE INDEX idx_sales_customer_id 
ON sales(customer_id);

CREATE INDEX idx_sales_product_id 
ON sales(product_id);

CREATE INDEX idx_sales_date_id 
ON sales(date_id);

CREATE INDEX idx_sales_customer_date 
ON sales(customer_id, date_id);

Impact

- Improved JOIN performance
- Faster aggregation queries
- Reduced full table scans
- Better scalability for larger datasets

Query Analysis

EXPLAIN QUERY PLAN
SELECT customer_id, SUM(total_price)
FROM sales
GROUP BY customer_id;

Example Insights

- Revenue is concentrated among a small group of customers
- Certain product categories generate a disproportionate share of revenue
- A limited number of products account for the majority of sales
- Revenue trends indicate time-based patterns

Learning Outcomes

- Designing relational databases using a star schema
- Writing analytical SQL queries with JOIN, GROUP BY, and HAVING
- Applying indexing for performance optimization
- Structuring a data project in a professional format
- Translating business questions into data analysis

Future Improvements

- Introduce a date dimension table
- Implement ETL processes using Python
- Build a dashboard using Power BI or Tableau
- Apply advanced SQL techniques such as window functions and cohort analysis
- Migrate to PostgreSQL for advanced database features

Project Structure

/retail-sales-analytics
│
├── 01_create_tables.sql
├── 02_insert_data.sql
├── 03_business_queries.sql
├── 04 performance_improvement.sql
│
└── README.md

Next Steps

The next phase of this project will include the development of a dashboard to visualize key metrics such as revenue trends, customer segmentation, and product performance.

