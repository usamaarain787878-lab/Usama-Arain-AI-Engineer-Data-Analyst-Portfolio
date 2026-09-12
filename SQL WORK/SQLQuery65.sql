-- ==========================================
-- STEP 1: Database & Table Creation
-- ==========================================

-- Create database
CREATE DATABASE StoreDB001;

-- Select database (FIXED: matching database name)
USE StoreDB001;

-- Create Product table
CREATE TABLE Product (
    ProductID INT,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price INT,
    Quantity INT
);


-- ==========================================
-- STEP 2: Insert Records
-- ==========================================

INSERT INTO Product (ProductID, ProductName, Category, Price, Quantity) VALUES
(1, 'Keyboard', 'Computer', 2500, 10),
(2, 'Mouse', 'Computer', 1200, 15),
(3, 'Monitor', 'Computer', 25000, 5),
(4, 'Printer', 'Computer', 18000, 4),
(5, 'Chair', 'Furniture', 8000, 8),
(6, 'Table', 'Furniture', 15000, 6),
(7, 'Sofa', 'Furniture', 35000, 3),
(8, 'Notebook', 'Stationery', 300, 50),
(9, 'Pen', 'Stationery', 100, 100),
(10, 'Marker', 'Stationery', 150, 70);


-- ==========================================
-- STEP 3: All SQL Queries & Aggregations
-- ==========================================

-- 1. Number of products in each category
SELECT Category, COUNT(*) AS Product_Count 
FROM Product 
GROUP BY Category;

-- 2. Each category and the total quantity of products
SELECT Category, SUM(Quantity) AS Total_Quantity 
FROM Product 
GROUP BY Category;

-- 3. Each category and the total price of products
SELECT Category, SUM(Price) AS Total_Price 
FROM Product 
GROUP BY Category;

-- 4. Each category and the average product price (Cast to DECIMAL for exact precision)
SELECT Category, AVG(CAST(Price AS DECIMAL(10,2))) AS Average_Price 
FROM Product 
GROUP BY Category;

-- 5. Each category and the highest product price
SELECT Category, MAX(Price) AS Highest_Price 
FROM Product 
GROUP BY Category;

-- 6. Each category and the lowest product price
SELECT Category, MIN(Price) AS Lowest_Price 
FROM Product 
GROUP BY Category;

-- 7. Each price and the number of products having that price
SELECT Price, COUNT(*) AS Product_Count 
FROM Product 
GROUP BY Price;

-- 8. Each price and the total quantity of products having that price
SELECT Price, SUM(Quantity) AS Total_Quantity 
FROM Product 
GROUP BY Price;

-- 9. Each category and the average quantity of products
SELECT Category, AVG(CAST(Quantity AS DECIMAL(10,2))) AS Average_Quantity 
FROM Product 
GROUP BY Category;

-- 10. Each category along with Category, Product Count, Total Quantity, Average Price
SELECT Category, 
       COUNT(*) AS Product_Count, 
       SUM(Quantity) AS Total_Quantity, 
       AVG(CAST(Price AS DECIMAL(10,2))) AS Average_Price 
FROM Product 
GROUP BY Category;

-- 11. Group products by Category and display minimum and maximum quantity
SELECT Category, 
       MIN(Quantity) AS Min_Quantity, 
       MAX(Quantity) AS Max_Quantity 
FROM Product 
GROUP BY Category;

-- 12. Group products by Category and display total quantity and average price
SELECT Category, 
       SUM(Quantity) AS Total_Quantity, 
       AVG(CAST(Price AS DECIMAL(10,2))) AS Average_Price 
FROM Product 
GROUP BY Category;

-- 13. Group products by Category and display number of products, total quantity, minimum price, and maximum price
SELECT Category, 
       COUNT(*) AS Product_Count, 
       SUM(Quantity) AS Total_Quantity, 
       MIN(Price) AS Min_Price, 
       MAX(Price) AS Max_Price 
FROM Product 
GROUP BY Category;