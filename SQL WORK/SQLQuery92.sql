-- 1. Create Database
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'InventoryDB')
    CREATE DATABASE InventoryDB;
GO

USE InventoryDB;
GO

-- 2. Create Table
IF OBJECT_ID('Products', 'U') IS NOT NULL
    DROP TABLE Products;
GO

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    StockDate DATE
);
GO

-- 3. Insert Records
INSERT INTO Products (ProductID, ProductName, Category, Quantity, StockDate) VALUES
(1, 'Laptop', 'Electronics', 15, '2026-01-10'),
(2, 'Keyboard', 'Electronics', 50, '2026-02-15'),
(3, 'Office Chair', 'Furniture', 20, '2026-03-05'),
(4, 'Printer', 'Electronics', 10, '2026-04-12'),
(5, 'Notebook', 'Stationery', 100, '2026-05-01'),
(6, 'Pen', 'Stationery', 200, '2026-05-20'),
(7, 'Desk', 'Furniture', 12, '2026-06-10'),
(8, 'Mouse', 'Electronics', 40, '2026-07-05'),
(9, 'File Folder', 'Stationery', 75, '2026-08-01'),
(10, 'Monitor', 'Electronics', 18, '2026-08-15');
GO

-- 4. Calculate days in stock
SELECT ProductName, DATEDIFF(DAY, StockDate, GETDATE()) AS DaysInStock
FROM Products;

-- 5. Display ProductName, Category, StockDate, and DaysInStock
SELECT ProductName, Category, StockDate, DATEDIFF(DAY, StockDate, GETDATE()) AS DaysInStock
FROM Products;

-- 6. In stock for more than 30 days
SELECT * FROM Products 
WHERE DATEDIFF(DAY, StockDate, GETDATE()) > 30;

-- 7. In stock for more than 60 days
SELECT * FROM Products 
WHERE DATEDIFF(DAY, StockDate, GETDATE()) > 60;

-- 8. In stock for less than 30 days
SELECT * FROM Products 
WHERE DATEDIFF(DAY, StockDate, GETDATE()) < 30;

-- 9. In stock for more than 90 days
SELECT * FROM Products 
WHERE DATEDIFF(DAY, StockDate, GETDATE()) > 90;

-- 10. Months in stock
SELECT ProductName, DATEDIFF(MONTH, StockDate, GETDATE()) AS MonthsInStock
FROM Products;

-- 11. Weeks in stock
SELECT ProductName, DATEDIFF(WEEK, StockDate, GETDATE()) AS WeeksInStock
FROM Products;

-- 12. Product in stock for the highest number of days
SELECT TOP 1 * FROM Products 
ORDER BY DATEDIFF(DAY, StockDate, GETDATE()) DESC;

-- 13. Product in stock for the fewest number of days
SELECT TOP 1 * FROM Products 
ORDER BY DATEDIFF(DAY, StockDate, GETDATE()) ASC;

-- 14. Stocked before specific date and days in stock
SELECT ProductName, StockDate, DATEDIFF(DAY, StockDate, GETDATE()) AS DaysInStock
FROM Products
WHERE StockDate < '2026-04-01';

-- 15. In stock between 30 and 100 days
SELECT * FROM Products 
WHERE DATEDIFF(DAY, StockDate, GETDATE()) BETWEEN 30 AND 100;

-- 16. In stock for more than 6 months
SELECT * FROM Products 
WHERE DATEDIFF(MONTH, StockDate, GETDATE()) > 6;

-- 17. Complete summary
SELECT 
    ProductID, 
    ProductName, 
    StockDate, 
    DATEDIFF(DAY, StockDate, GETDATE()) AS DaysInStock, 
    DATEDIFF(MONTH, StockDate, GETDATE()) AS MonthsInStock
FROM Products;