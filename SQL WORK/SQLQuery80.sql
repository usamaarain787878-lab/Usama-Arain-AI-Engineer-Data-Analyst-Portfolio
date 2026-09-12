IF OBJECT_ID('CustomerOrder', 'U') IS NOT NULL
    DROP TABLE CustomerOrder;

CREATE TABLE CustomerOrder (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ProductName VARCHAR(50),
    OrderDate DATE,
    PaymentDate DATE,
    Amount INT
);

-- Insert Data
INSERT INTO CustomerOrder (OrderID, CustomerName, ProductName, OrderDate, PaymentDate, Amount) VALUES
(1, 'Ali', 'Laptop', '2026-08-01', '2026-08-03', 80000),
(2, 'Sara', 'Mobile', '2026-08-05', '2026-08-05', 55000),
(3, 'Ahmed', 'Keyboard', '2026-08-10', '2026-08-12', 3500),
(4, 'Hina', 'Monitor', '2026-08-15', '2026-08-18', 30000),
(5, 'Usman', 'Mouse', '2026-08-20', '2026-08-20', 2000),
(6, 'Ayesha', 'Laptop', '2026-08-22', '2026-08-25', 80000),
(7, 'Hamza', 'Mobile', '2026-08-25', '2026-08-27', 60000),
(8, 'Sana', 'Keyboard', '2026-08-28', '2026-08-28', 4000),
(9, 'Zain', 'Tablet', '2026-09-01', '2026-09-02', 45000),
(10, 'Fatima', 'Monitor', '2026-09-02', '2026-09-02', 35000);

-- Updates
UPDATE CustomerOrder SET PaymentDate = '2026-08-04' WHERE CustomerName = 'Ali';
UPDATE CustomerOrder SET Amount = 60000 WHERE CustomerName = 'Sara';
UPDATE CustomerOrder SET OrderDate = '2026-08-16' WHERE OrderID = 4;
UPDATE CustomerOrder SET PaymentDate = '2026-09-01' WHERE CustomerName = 'Hamza';
UPDATE CustomerOrder SET Amount = 5000 WHERE ProductName != 'Keyboard';
UPDATE CustomerOrder SET PaymentDate = '2026-09-05' WHERE ProductName != 'Laptop';
UPDATE CustomerOrder SET Amount = 10000 WHERE CustomerName != 'Ali';
UPDATE CustomerOrder SET PaymentDate = '2026-09-10' WHERE OrderID IN (1, 3, 5);
UPDATE CustomerOrder SET Amount = 90000 WHERE CustomerName IN ('Ali', 'Ayesha', 'Hamza');
UPDATE CustomerOrder SET OrderDate = '2026-09-01' WHERE OrderID IN (2, 4, 6);

-- Deletions
DELETE FROM CustomerOrder WHERE OrderID = 8;
DELETE FROM CustomerOrder WHERE OrderDate = '2026-08-10';
DELETE FROM CustomerOrder WHERE CustomerName = 'Hina';
DELETE FROM CustomerOrder WHERE OrderID IN (2, 4, 6);

-- Final Updates
UPDATE CustomerOrder SET PaymentDate = '2026-09-03' WHERE OrderDate = '2026-08-22';
UPDATE CustomerOrder SET Amount = 85000 WHERE ProductName = 'Laptop' AND OrderID = 1;

-- Show Final Result
SELECT * FROM CustomerOrder;