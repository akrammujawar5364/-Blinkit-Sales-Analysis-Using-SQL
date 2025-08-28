📊 Blinkit Sales Analysis Using SQL
🔍 Project Overview

This project showcases data analysis using SQL on the Blinkit Grocery Sales Dataset. The main objective was to clean the data, calculate key business metrics, and derive actionable insights for decision-making.

As a Data Analyst, I focused on:
✔ Data Cleaning
✔ Descriptive Analytics (KPIs & Aggregates)
✔ Sales Performance Analysis by Item Type, Outlet Size, Location & Year

✅ Key Features
✨ Data Cleaning
Fixed inconsistent fat content values:
LF, low fat → Low Fat
reg → Regular

📈 KPIs Calculated
Total Sales (in ₹ Millions)
Average Sales per Item
Number of Orders

📊 Detailed Analysis
Sales by Fat Content
Sales by Item Type (Top 5)
Sales by Outlet Size, Location Type, and Establishment Year
Percentage contribution by different outlet categories

📂 Project Structure
Blinkit-SQL-Analysis/
│
├── blinkit_project.sql     # All SQL queries
├── README.md               # Project summary and insights

🛠 Tech Stack

Database: MySQL
Language: SQL

Functions Used: SUM(), AVG(), ROUND(), CASE, GROUP BY, ORDER BY, LIMIT

🧾 Key Queries

All queries are available in blinkit_project.sql
.
Some examples include:
✔ Total Sales in Millions
✔ Top 5 Item Types by Sales
✔ Sales Contribution by Outlet Size and Location

📊 Insights From Analysis

✅ Regular Fat items contribute more revenue compared to Low Fat items.
✅ Top 5 Item Types account for the majority of sales.
✅ Tier 3 locations generate higher revenue than Tier 1 and Tier 2.
✅ Large-sized outlets contribute the most to overall sales.

🚀 How to Run the Project

Import the Blinkit dataset into MySQL.
Run the queries from blinkit_project.sql.
