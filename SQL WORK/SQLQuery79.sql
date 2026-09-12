IF OBJECT_ID('CustomerOrderFinal', 'U') IS NOT NULL
    DROP TABLE CustomerOrderFinal;

-- Table banana
CREATE TABLE CustomerOrderFinal (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ProductName VARCHAR(50),
    OrderDate DATE,
    PaymentDate DATE,
    Amount INT
);

-- Aap ki saari original details insert karna
INSERT INTO CustomerOrderFinal (OrderID, CustomerName, ProductName, OrderDate, PaymentDate, Amount) VALUES
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

-- Saari details display karna
SELECT * FROM CustomerOrderFinal;