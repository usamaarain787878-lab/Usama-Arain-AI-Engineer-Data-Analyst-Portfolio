-- 1. Create Database
CREATE DATABASE ShoppingDB0;
USE ShoppingDB0;

-- 2. Create Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ProductName VARCHAR(100),
    OrderDate DATE,
    DeliveryDate DATE
);

-- 3. Insert Records
INSERT INTO Orders (OrderID, CustomerName, ProductName, OrderDate, DeliveryDate) VALUES
(101, 'Ali', 'Laptop', '2026-01-12', '2026-01-16'),
(102, 'Ahmed', 'Keyboard', '2026-02-20', '2026-02-24'),
(103, 'Sara', 'Mouse', '2026-03-05', '2026-03-08'),
(104, 'Ayesha', 'Monitor', '2026-04-18', '2026-04-22'),
(105, 'Hamza', 'Printer', '2026-05-10', '2026-05-15'),
(106, 'Fatima', 'Webcam', '2026-06-25', '2026-06-29'),
(107, 'Hassan', 'Headphones', '2026-07-08', '2026-07-12'),
(108, 'Zainab', 'SSD', '2026-08-16', '2026-08-20'),
(109, 'Usman', 'RAM', '2026-09-03', '2026-09-07'),
(110, 'Maryam', 'Tablet', '2026-10-21', '2026-10-25'),
(111, 'Haris', 'Laptop', '2025-02-20', '2025-02-27'),
(112, 'Atif', 'Printer', '2025-03-15', '2025-03-29');

-- 6. Display orders placed in May
SELECT * FROM Orders WHERE MONTH(OrderDate) = 5;

-- 7. Display orders placed in the third quarter
SELECT * FROM Orders WHERE DATEPART(QUARTER, OrderDate) = 3;

-- 8. Display orders where the OrderDate day is 10 or greater
SELECT * FROM Orders WHERE DAY(OrderDate) >= 10;

-- 9. Display orders delivered in August
SELECT * FROM Orders WHERE MONTH(DeliveryDate) = 8;

-- 10. Display orders placed during 2026
SELECT * FROM Orders WHERE YEAR(OrderDate) = 2026;

-- 11. Display orders placed in October
SELECT * FROM Orders WHERE MONTH(OrderDate) = 10;

-- 12. Display orders placed in the first quarter
SELECT * FROM Orders WHERE DATEPART(QUARTER, OrderDate) = 1;

-- 13. Display orders where the OrderDate day is 20 or greater
SELECT * FROM Orders WHERE DAY(OrderDate) >= 20;

-- 14. Display orders delivered in July
SELECT * FROM Orders WHERE MONTH(DeliveryDate) = 7;

-- 15. Display orders placed during 2025
SELECT * FROM Orders WHERE YEAR(OrderDate) = 2025;