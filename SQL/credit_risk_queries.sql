-- Credit Risk & Rating Analysis

-- Database Created
CREATE DATABASE credit_risk_db;
USE credit_risk_db;

-- Data Type
DESCRIBE customer_credit_data;

ALTER TABLE customer_credit_data
MODIFY COLUMN last_payment_date DATE;

-- Business Queries
-- Total Customers
SELECT 
    COUNT(*) AS total_customers
FROM
    customer_credit_data;
    
-- Average Credit Score
SELECT 
    ROUND(AVG(credit_score),2) AS avg_credit_score
FROM
    customer_credit_data;

-- Customers by Region
SELECT 
    region, COUNT(*) AS total_customer
FROM
    customer_credit_data
GROUP BY region
ORDER BY total_customer DESC;

-- Default Rate
SELECT 
    ROUND(COUNT(CASE
        WHEN account_status = 'Default' THEN 1
    END) * 100.0 / COUNT(*),2) AS default_rate
FROM
    customer_credit_data;
    
-- Avg Loan by Risk Category
SELECT 
    risk_category, ROUND(AVG(loan_amount), 2) AS avg_loan
FROM
    customer_credit_data
GROUP BY risk_category; 

-- Missed Payments vs Default
SELECT 
    missed_payments, COUNT(*) AS total_customer
FROM
    customer_credit_data
WHERE
    account_status = 'Default'
GROUP BY missed_payments
ORDER BY missed_payments;

-- High Risk Customers
SELECT 
    *
FROM
    customer_credit_data
WHERE
    risk_category = 'High Risk'
        AND loan_amount > 500000;
        
-- Region-wise Default %
SELECT 
    region,
    COUNT(CASE
        WHEN account_status = 'Default' THEN 1
    END) * 100.0 / COUNT(*) AS default_percentage
FROM
    customer_credit_data
GROUP BY region;

-- Customers Not Paid Recently
SELECT 
    customer_id, days_since_last_payment
FROM
    customer_credit_data
WHERE
    days_since_last_payment > 90;
    
-- Ranking customers by loan amount
SELECT customer_id, loan_amount, 
       RANK() OVER (ORDER BY loan_amount DESC) AS loan_rank 
       FROM customer_credit_data;