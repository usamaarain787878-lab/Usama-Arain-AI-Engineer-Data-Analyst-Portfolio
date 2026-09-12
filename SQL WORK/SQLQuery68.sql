-- 1. Create a database named SalesDB03
CREATE DATABASE SalesDB04;

-- 2. Select the SalesDB03 database
USE SalesDB04;

-- 3. Create a table named Orders with the specified columns
CREATE TABLE Orders (
    OrderID INT,
    CustomerName VARCHAR(50),
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Price INT,
    SalesPerson VARCHAR(50)
);

-- 4. Insert the records into the Orders table
INSERT INTO Orders (OrderID, CustomerName, ProductName, Category, Quantity, Price, SalesPerson) VALUES
(1, 'Ali', 'Laptop', 'Computer', 2, 80000, 'Ahmed'),
(2, 'Sara', 'Mouse', 'Computer', 5, 1500, 'Bilal'),
(3, 'Ahmed', 'Keyboard', 'Computer', 3, 2500, 'Ahmed'),
(4, 'Hina', 'Chair', 'Furniture', 4, 8000, 'Danish'),
(5, 'Usman', 'Table', 'Furniture', 2, 15000, 'Bilal'),
(6, 'Sana', 'Laptop', 'Computer', 1, 85000, 'Ahmed'),
(7, 'Hamza', 'Pen', 'Stationery', 20, 100, 'Danish'),
(8, 'Ayesha', 'Notebook', 'Stationery', 10, 300, 'Bilal'),
(9, 'Hassan', 'Chair', 'Furniture', 3, 8000, 'Danish'),
(10, 'Fatima', 'Laptop', 'Computer', 2, 80000, 'Ahmed');


-- Queries Solutions:

-- 1. Find the total number of orders
SELECT COUNT(*) AS TotalOrders FROM Orders;

-- 2. Find the total number of OrderID values
SELECT COUNT(OrderID) AS TotalOrderIDs FROM Orders;

-- 3. Count the number of unique customers (Using DISTINCT)
SELECT COUNT(DISTINCT CustomerName) AS TotalUniqueCustomers FROM Orders;

-- 4. Count the number of orders for the Computer category
SELECT COUNT(*) AS ComputerOrders FROM Orders WHERE Category = 'Computer';

-- 5. Count the number of orders for the Furniture category
SELECT COUNT(*) AS FurnitureOrders FROM Orders WHERE Category = 'Furniture';

-- 6. Count the number of orders for the Stationery category
SELECT COUNT(*) AS StationeryOrders FROM Orders WHERE Category = 'Stationery';

-- 7. Count the number of orders handled by Ahmed
SELECT COUNT(*) AS AhmedOrders FROM Orders WHERE SalesPerson = 'Ahmed';

-- 8. Count the number of orders handled by Bilal
SELECT COUNT(*) AS BilalOrders FROM Orders WHERE SalesPerson = 'Bilal';

-- 9. Count the number of orders handled by Danish
SELECT COUNT(*) AS DanishOrders FROM Orders WHERE SalesPerson = 'Danish';

-- 10. Count the number of orders where the quantity is greater than 2
SELECT COUNT(*) AS QtyGreaterThan2 FROM Orders WHERE Quantity > 2;

-- 11. Count the number of orders where the price is 80000
SELECT COUNT(*) AS Price80000 FROM Orders WHERE Price = 80000;

-- 12. Count the number of orders where the quantity is less than 5
SELECT COUNT(*) AS QtyLessThan5 FROM Orders WHERE Quantity < 5;

-- 13. Count the number of orders for the product Laptop
SELECT COUNT(*) AS LaptopOrders FROM Orders WHERE ProductName = 'Laptop';

-- 14. Count the number of orders for the product Chair
SELECT COUNT(*) AS ChairOrders FROM Orders WHERE ProductName = 'Chair';

-- 15. Count the number of orders for the product Mouse
SELECT COUNT(*) AS MouseOrders FROM Orders WHERE ProductName = 'Mouse';

-- 16. Count the number of orders where the customer name starts with A
SELECT COUNT(*) AS CustomerStartsWithA FROM Orders WHERE CustomerName LIKE 'A%';

-- 17. Count the number of orders where the product name starts with L
SELECT COUNT(*) AS ProductStartsWithL FROM Orders WHERE ProductName LIKE 'L%';

-- 18. Count the number of orders where the category is Computer and quantity is greater than 1
SELECT COUNT(*) AS ComputerQtyGreaterThan1 FROM Orders WHERE Category = 'Computer' AND Quantity > 1;

-- 19. Count the number of orders where the price is greater than 5000
SELECT COUNT(*) AS PriceGreaterThan5000 FROM Orders WHERE Price > 5000;

-- 20. Count the number of orders handled by Ahmed for the Computer category
SELECT COUNT(*) AS AhmedComputerOrders FROM Orders WHERE SalesPerson = 'Ahmed' AND Category = 'Computer';