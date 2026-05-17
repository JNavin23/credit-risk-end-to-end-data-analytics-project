**📊 Credit Risk End-to-End Data Analytics Project**

**📌 Project Overview**

This project demonstrates a complete end-to-end data analytics workflow for credit risk analysis. It involves transforming raw financial data into meaningful insights through data cleaning, database design, and interactive dashboard development.The goal is to identify high-risk customers, understand loan behavior, and monitor risk trends over time.

**🛠 Tools & Technologies**

Python (Pandas, NumPy) → Data cleaning & preprocessing
MySQL → Data storage & querying
Power BI → Data visualization & dashboarding
DAX → Business calculations & time intelligence

**🔄 Project Workflow**

1️⃣ Data Cleaning (Python)
Handled missing values and inconsistent data
Converted data types (dates, numeric fields)
Cleaned categorical columns
Exported cleaned dataset for further use

2️⃣ Data Storage (MySQL)
Created database: credit_risk_db
Imported cleaned dataset
Performed validation and queries

3️⃣ Data Visualization (Power BI)
Connected MySQL via ODBC
Created relationships using a Date Table
Built interactive dashboards using DAX

**📊 Dashboard Structure**

🔹 Page 1: Credit Risk Overview

Total Customers
Total Loan Amount
Average Credit Score
Default Rate %
Risk Distribution

🔹 Page 2: Loan Analysis

Default Rate by Loan Type
Default Rate by Risk Category
Loan Exposure Analysis

🔹 Page 3: Customer Behavior

Missed Payments vs Default
Customer Distribution by Age
Behavioral Risk Indicators

🔹 Page 4: Customer Drill-through

Customer-level risk insights
Priority flag for high-risk customers
Detailed loan and credit score analysis

🔹 Page 5: Time Intelligence

Customer growth trend
Default rate trend
Month-to-Date (MTD) and Year-to-Date (YTD) metrics

**🔍 Key Insights**

Default rate remains stable around ~35% across regions
Customers with higher missed payments show increased default risk
High-risk customers identified using credit score and behavior
Time analysis shows consistent risk trends across months

**📸 Dashboard Screenshots**

📌 Credit Risk Overview

📌 Loan Analysis

📌 Customer Behavior

📌 Customer Details (Drill-through)

📌 Time Intelligence

**🧠 Key Features**

End-to-end analytics pipeline (Python → SQL → Power BI)
Drill-through functionality for detailed analysis
Dynamic DAX measures and KPIs
Time intelligence (MTD, YTD)
Conditional formatting for risk highlighting

**🚀 Conclusion**

This project demonstrates the complete lifecycle of a data analytics solution, from raw data preprocessing to business intelligence dashboards, enabling data-driven decision-making in credit risk management.
