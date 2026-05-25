 Retail Sales Analytics Data Warehouse (SQLite + SQL)

 Project Overview

This project simulates a real-world retail analytics system using a relational database (SQLite).  
It demonstrates how raw sales data can be structured, stored, and analyzed to generate business insights.

The goal is to replicate a simplified **data warehouse environment** used in real companies for reporting and decision-making.

---

 🎯 Business Objective

The main objective of this project is to answer key business questions such as:

- What is the total revenue?
- Who are the most valuable customers?
- Which products perform best?
- How does revenue evolve over time?
- Which categories generate the most sales?



 🧱 Database Structure

The project follows a simple **star schema design**:

 📊 Tables:

- **customers**
  - customer_id (PK)
  - name
  - city
  - signup_date

- **products**
  - product_id (PK)
  - name
  - category
  - price

- **sales (Fact Table)**
  - sale_id (PK)
  - customer_id (FK)
  - product_id (FK)
  - date_id
  - quantity
  - total_price

---

##⚙️ Technologies Used

- SQLite (Database)
- SQL (Data Modeling & Analysis)
- DB Browser for SQLite / any SQL editor

---

## 📥 Data Setup

The database is created in three steps:

1. Create tables → `01_create_tables.sql`
2. Insert sample data → `02_insert_data.sql`
3. Run analytics queries → `03_business_queries.sql`

---

## 📊 Key Analysis Performed

This project includes SQL queries for:

### 💰 Business KPIs
- Total revenue
- Number of transactions
- Average order value

### 👤 Customer Analysis
- Revenue per customer
- Top customers
- Revenue by city

### 📦 Product Analysis
- Best-selling products
- Revenue per product
- Category performance

### 📅 Time Analysis
- Revenue trends over time
- Best performing sales periods

---

## 📈 Example Insights

- Revenue is concentrated among top customers
- Electronics category generates the highest revenue
- A small number of products drive most sales

---

## 🧠 What I Learned

- Designing relational databases (star schema)
- Writing complex SQL queries (JOINs, GROUP BY, HAVING)
- Performing business-oriented data analysis
- Structuring a data project like in real companies

---

## 🚀 Future Improvements

- Add a proper date dimension table
- Integrate Python for automation (ETL pipeline)
- Build a dashboard (Power BI / Tableau)
- Add advanced SQL (window functions, cohort analysis)

---

## 📁 Project Structure

