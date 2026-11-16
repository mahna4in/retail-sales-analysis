-- RETAIL SALES DATA ANALYTICS PROJECT
-- Tool: MySQL Workbench
-- Dataset: Kaggle Retail Sales Dataset
-- Total Records: 1000

-- USE retail_sales_db;
-- SHOW TABLES;


-- CREATE TABLE retail_sales (
--     `Transaction ID` INT,
--     `Date` DATE,
--     `Customer ID` INT,
--     Gender VARCHAR(10),
--     Age INT,
--     `Product Category` VARCHAR(50),
--     Quantity INT,
--     `Price per Unit` INT,
--     `Total Amount` INT,
--     Year INT,
--     Month INT,
--     `Month Name` VARCHAR(20),
--     Day INT,
--     Weekday VARCHAR(20)
-- );

-- SHOW TABLES;

-- DESCRIBE retail_sales;

-- USE retail_sales_db;

-- SELECT COUNT(*) AS total_records
-- FROM retail_sales;


-- View the dataset

-- SELECT *
-- FROM retail_sales
-- LIMIT 10;


-- --1. Total Revenue-- 

-- SELECT SUM(`Total Amount`) AS Total_Revenue
-- FROM retail_sales;


-- 2. Total Transactions:

-- SELECT COUNT(DISTINCT `Transaction ID`) AS Total_Transactions
-- FROM retail_sales;


-- 3. Total Quantity Sold:

-- SELECT SUM(Quantity) AS Total_Quantity_Sold
-- FROM retail_sales;


-- 4. Total Unique Customers:-- 

-- SELECT COUNT(DISTINCT `Customer ID`) AS Total_Customers
-- FROM retail_sales;




-- Business Insights-- ----------------------

-- 1. Monthly Revenue:

-- SELECT
--     Month,
--     `Month Name`,
--     SUM(`Total Amount`) AS Monthly_Revenue
-- FROM retail_sales
-- GROUP BY Month, `Month Name`
-- ORDER BY Month;


-- 2. Revenue by Product Category:

-- SELECT
--     `Product Category`,
--     SUM(`Total Amount`) AS Total_Revenue
-- FROM retail_sales
-- GROUP BY `Product Category`
-- ORDER BY Total_Revenue DESC;


-- 3. Sales by Gender:

-- SELECT
--     Gender,
--     COUNT(`Transaction ID`) AS Total_Transactions,
--     SUM(`Total Amount`) AS Total_Revenue
-- FROM retail_sales
-- GROUP BY Gender;


-- 4. Top 5 Customers by Revenue:

-- SELECT
--     `Customer ID`,
--     SUM(`Total Amount`) AS Customer_Revenue
-- FROM retail_sales
-- GROUP BY `Customer ID`
-- ORDER BY Customer_Revenue DESC
-- LIMIT 5;


-- 5. Age Group Analysis:

-- SELECT
--     CASE
--         WHEN Age < 20 THEN 'Under 20'
--         WHEN Age BETWEEN 20 AND 29 THEN '20-29'
--         WHEN Age BETWEEN 30 AND 39 THEN '30-39'
--         WHEN Age BETWEEN 40 AND 49 THEN '40-49'
--         ELSE '50+'
--     END AS Age_Group,
--     COUNT(*) AS Total_Transactions,
--     SUM(`Total Amount`) AS Total_Revenue
-- FROM retail_sales
-- GROUP BY Age_Group
-- ORDER BY Age_Group;