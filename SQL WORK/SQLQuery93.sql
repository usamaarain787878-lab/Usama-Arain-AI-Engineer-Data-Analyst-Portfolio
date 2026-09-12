-- ==========================================
-- 1. Create Database
-- ==========================================
CREATE DATABASE SalesDB009;
GO

USE SalesDB009;
GO

-- ==========================================
-- 2. Create Table
-- ==========================================
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ProductName VARCHAR(50),
    SaleDate DATE,
    Quantity INT,
    TotalAmount INT
);
GO

-- ==========================================
-- 3. Insert 10 Records
-- ==========================================
INSERT INTO Sales (SaleID, CustomerName, ProductName, SaleDate, Quantity, TotalAmount) VALUES
(1, 'Ali', 'Laptop', '2026-01-15', 1, 85000),
(2, 'Ahmed', 'Mouse', '2026-02-10', 2, 3000),
(3, 'Sara', 'Keyboard', '2026-03-05', 1, 5000),
(4, 'Ayesha', 'Monitor', '2026-03-20', 2, 40000),
(5, 'Usman', 'Laptop', '2026-04-12', 1, 90000),
(6, 'Hina', 'Printer', '2026-05-08', 1, 25000),
(7, 'Bilal', 'Mouse', '2026-06-18', 3, 4500),
(8, 'Zainab', 'Keyboard', '2026-07-25', 2, 10000),
(9, 'Hamza', 'Monitor', '2026-08-14', 1, 22000),
(10, 'Talha', 'Printer', '2026-09-01', 1, 28000);
GO

-- ==========================================
-- 4. SQL Queries (1 to 17 Solutions)
-- ==========================================

-- 1. Display the month name of each sale
SELECT SaleID, CustomerName, ProductName, SaleDate, DATENAME(MONTH, SaleDate) AS MonthName
FROM Sales;

-- 2. Display the weekday name on which each sale was made
SELECT SaleID, CustomerName, ProductName, SaleDate, DATENAME(WEEKDAY, SaleDate) AS WeekdayName
FROM Sales;

-- 3. Display the CustomerName, SaleDate, and month name
SELECT CustomerName, SaleDate, DATENAME(MONTH, SaleDate) AS MonthName
FROM Sales;

-- 4. Display the ProductName, SaleDate, and weekday name
SELECT ProductName, SaleDate, DATENAME(WEEKDAY, SaleDate) AS WeekdayName
FROM Sales;

-- 5. Display the CustomerName, SaleDate, month name, and year
SELECT CustomerName, SaleDate, DATENAME(MONTH, SaleDate) AS MonthName, YEAR(SaleDate) AS SaleYear
FROM Sales;

-- 6. Display the ProductName, SaleDate, day number, and month name
SELECT ProductName, SaleDate, DAY(SaleDate) AS DayNumber, DATENAME(MONTH, SaleDate) AS MonthName
FROM Sales;

-- 7. Display the CustomerName, ProductName, SaleDate, weekday name, and month name
SELECT CustomerName, ProductName, SaleDate, DATENAME(WEEKDAY, SaleDate) AS WeekdayName, DATENAME(MONTH, SaleDate) AS MonthName
FROM Sales;

-- 8. Find all sales that were made in March
SELECT * FROM Sales
WHERE MONTH(SaleDate) = 3;

-- 9. Find all sales that were made in January
SELECT * FROM Sales
WHERE MONTH(SaleDate) = 1;

-- 10. Find all sales that were made in September
SELECT * FROM Sales
WHERE MONTH(SaleDate) = 9;

-- 11. Find all sales that were made on a Monday
SELECT * FROM Sales
WHERE DATENAME(WEEKDAY, SaleDate) = 'Monday';

-- 12. Display the current month name
SELECT DATENAME(MONTH, GETDATE()) AS CurrentMonthName;

-- 13. Display the current weekday name
SELECT DATENAME(WEEKDAY, GETDATE()) AS CurrentWeekdayName;

-- 14. Find all sales that were made on a Friday
SELECT * FROM Sales
WHERE DATENAME(WEEKDAY, SaleDate) = 'Friday';

-- 15. Display each sale with Customer Name, Product Name, Sale Date, Month Name, and Weekday Name
SELECT CustomerName, ProductName, SaleDate, 
       DATENAME(MONTH, SaleDate) AS MonthName, 
       DATENAME(WEEKDAY, SaleDate) AS WeekdayName
FROM Sales;

-- 16. Find all sales made in March or April
SELECT * FROM Sales
WHERE MONTH(SaleDate) IN (3, 4);

-- 17. Find all sales made on Monday or Friday
SELECT * FROM Sales
WHERE DATENAME(WEEKDAY, SaleDate) IN ('Monday', 'Friday');