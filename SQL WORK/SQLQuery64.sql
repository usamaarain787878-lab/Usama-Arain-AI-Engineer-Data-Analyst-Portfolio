DROP TABLE OrderDetails;

CREATE TABLE OrderDetails (
    OrderID INT,
    CustomerName VARCHAR(20),
    ProductName VARCHAR(20),
    City VARCHAR(20),
    Quantity INT,
    Amount INT
);

INSERT INTO OrderDetails VALUES 
(1, 'Ali', 'Laptop', 'Karachi', 2, 170000),
(2, 'Ahmed', 'Mobile', 'Lahore', 3, 225000),
(3, 'Hamza', 'Monitor', 'Hyderabad', 2, 70000),
(4, 'Bilal', 'Keyboard', 'Karachi', 5, 25000),
(5, 'Hassan', 'Camera', 'Lahore', 1, 95000),
(6, 'Usman', 'Tablet', 'Hyderabad', 2, 110000),
(7, 'Salman', 'Mouse', 'Karachi', 6, 18000),
(8, 'Ahsan', 'Laptop', 'Lahore', 1, 85000),
(9, 'Danish', 'Printer', 'Hyderabad', 3, 84000),
(10, 'Saad', 'Speaker', 'Karachi', 4, 72000);

SELECT SUM(Amount) FROM OrderDetails;
SELECT SUM(Quantity) FROM OrderDetails;
SELECT COUNT(*) FROM OrderDetails;
SELECT MAX(Amount) FROM OrderDetails;
SELECT MIN(Amount) FROM OrderDetails;
SELECT MAX(Quantity) FROM OrderDetails;
SELECT MIN(Quantity) FROM OrderDetails;
SELECT COUNT(CustomerName) FROM OrderDetails;
SELECT COUNT(ProductName) FROM OrderDetails;
SELECT COUNT(Amount) FROM OrderDetails;
SELECT SUM(Amount) FROM OrderDetails WHERE Amount > 80000;
SELECT SUM(Amount) FROM OrderDetails WHERE Amount < 100000;
SELECT SUM(Amount) FROM OrderDetails WHERE Amount >= 100000;
SELECT SUM(Amount) FROM OrderDetails WHERE Amount <= 50000;
SELECT SUM(Quantity) FROM OrderDetails WHERE Quantity > 2;
SELECT SUM(Quantity) FROM OrderDetails WHERE Quantity < 5;
SELECT SUM(Amount) FROM OrderDetails WHERE Quantity = 2;
SELECT SUM(Amount) FROM OrderDetails WHERE Quantity <> 2;
SELECT COUNT(*) FROM OrderDetails WHERE Amount > 80000;
SELECT COUNT(*) FROM OrderDetails WHERE Amount < 100000;
SELECT COUNT(*) FROM OrderDetails WHERE Quantity > 2;
SELECT COUNT(*) FROM OrderDetails WHERE Quantity <= 3;
SELECT COUNT(*) FROM OrderDetails WHERE Amount >= 70000;
SELECT COUNT(*) FROM OrderDetails WHERE Amount <> 85000;
SELECT MAX(Amount) FROM OrderDetails WHERE Quantity > 2;
SELECT MAX(Amount) FROM OrderDetails WHERE Quantity < 5;
SELECT MAX(Amount) FROM OrderDetails WHERE Quantity = 2;
SELECT MAX(Quantity) FROM OrderDetails WHERE Amount > 80000;
SELECT MAX(Amount) FROM OrderDetails WHERE Amount > 50000;
SELECT MAX(Quantity) FROM OrderDetails WHERE Quantity > 1;
SELECT MIN(Amount) FROM OrderDetails WHERE Quantity > 2;
SELECT MIN(Amount) FROM OrderDetails WHERE Quantity < 5;
SELECT MIN(Amount) FROM OrderDetails WHERE Quantity = 2;
SELECT MIN(Quantity) FROM OrderDetails WHERE Amount > 50000;
SELECT MIN(Amount) FROM OrderDetails WHERE Amount > 20000;
SELECT SUM(Amount) FROM OrderDetails WHERE City = 'Karachi';
SELECT SUM(Amount) FROM OrderDetails WHERE City = 'Lahore';
SELECT SUM(Amount) FROM OrderDetails WHERE City = 'Hyderabad';
SELECT COUNT(*) FROM OrderDetails WHERE City = 'Karachi';
SELECT COUNT(*) FROM OrderDetails WHERE City = 'Lahore';
SELECT MAX(Amount) FROM OrderDetails WHERE City = 'Karachi';
SELECT MIN(Amount) FROM OrderDetails WHERE City = 'Lahore';
SELECT SUM(Quantity) FROM OrderDetails WHERE City = 'Hyderabad';
SELECT COUNT(*) FROM OrderDetails WHERE City <> 'Karachi';
SELECT SUM(Amount) FROM OrderDetails WHERE City IN ('Karachi', 'Lahore', 'Hyderabad');
SELECT COUNT(*) FROM OrderDetails WHERE City IN ('Karachi', 'Lahore');
SELECT MAX(Amount) FROM OrderDetails WHERE City IN ('Karachi', 'Lahore', 'Hyderabad');
SELECT MIN(Amount) FROM OrderDetails WHERE City IN ('Karachi', 'Hyderabad');
SELECT SUM(Quantity) FROM OrderDetails WHERE City IN ('Lahore', 'Hyderabad');
SELECT COUNT(*) FROM OrderDetails WHERE ProductName IN ('Laptop', 'Mobile', 'Camera');
SELECT SUM(Amount) FROM OrderDetails WHERE ProductName IN ('Laptop', 'Monitor', 'Printer');
SELECT MAX(Amount) FROM OrderDetails WHERE ProductName IN ('Mobile', 'Tablet', 'Laptop');
SELECT SUM(Amount) FROM OrderDetails WHERE City = 'Karachi' AND Quantity > 3;
SELECT COUNT(*) FROM OrderDetails WHERE City = 'Lahore' AND Amount > 80000;
SELECT MAX(Amount) FROM OrderDetails WHERE City = 'Hyderabad' AND Quantity > 1;
SELECT MIN(Amount) FROM OrderDetails WHERE City = 'Karachi' AND Quantity > 3;
SELECT SUM(Quantity) FROM OrderDetails WHERE Amount > 50000 AND Quantity > 1;
SELECT COUNT(*) FROM OrderDetails WHERE Amount > 70000 AND Quantity < 4;
SELECT MAX(Amount) FROM OrderDetails WHERE City = 'Lahore' AND Quantity > 1;
SELECT MIN(Amount) FROM OrderDetails WHERE City = 'Karachi' AND Quantity < 5;
SELECT SUM(Amount) FROM OrderDetails WHERE City = 'Karachi' OR City = 'Lahore';
SELECT COUNT(*) FROM OrderDetails WHERE City = 'Hyderabad' OR City = 'Karachi';
SELECT MAX(Amount) FROM OrderDetails WHERE City = 'Karachi' OR Quantity > 4;
SELECT MIN(Amount) FROM OrderDetails WHERE City = 'Lahore' OR Quantity > 3;
SELECT SUM(Quantity) FROM OrderDetails WHERE Amount > 100000 OR Quantity > 4;
SELECT COUNT(*) FROM OrderDetails WHERE ProductName = 'Laptop' OR ProductName = 'Mobile';
SELECT SUM(Amount) FROM OrderDetails WHERE CustomerName LIKE 'A%';
SELECT COUNT(*) FROM OrderDetails WHERE CustomerName LIKE 'S%';
SELECT MAX(Amount) FROM OrderDetails WHERE CustomerName LIKE '%n';
SELECT MIN(Amount) FROM OrderDetails WHERE CustomerName LIKE '%a%';
SELECT SUM(Quantity) FROM OrderDetails WHERE ProductName LIKE 'M%';
SELECT COUNT(*) FROM OrderDetails WHERE ProductName LIKE '%r';
SELECT MAX(Amount) FROM OrderDetails WHERE ProductName LIKE '%top%';
SELECT SUM(Amount) FROM OrderDetails WHERE City LIKE 'K%';
SELECT COUNT(*) FROM OrderDetails WHERE City LIKE '%e';
SELECT COUNT(DISTINCT CustomerName) FROM OrderDetails;
SELECT COUNT(DISTINCT ProductName) FROM OrderDetails;
SELECT COUNT(DISTINCT City) FROM OrderDetails;
SELECT SUM(DISTINCT Amount) FROM OrderDetails;
SELECT MAX(DISTINCT Amount) FROM OrderDetails;
SELECT MIN(DISTINCT Amount) FROM OrderDetails;
SELECT COUNT(DISTINCT Quantity) FROM OrderDetails;
SELECT SUM(Amount) FROM OrderDetails WHERE (City = 'Karachi' OR City = 'Lahore') AND Quantity > 2;
SELECT COUNT(*) FROM OrderDetails WHERE City IN ('Karachi', 'Lahore', 'Hyderabad') AND Amount > 50000;
SELECT MAX(Amount) FROM OrderDetails WHERE ProductName LIKE 'M%' AND Quantity > 1;
SELECT MIN(Amount) FROM OrderDetails WHERE ProductName LIKE '%r' AND Amount > 20000;
SELECT SUM(Quantity) FROM OrderDetails WHERE CustomerName LIKE 'A%' OR City = 'Karachi';
SELECT COUNT(*) FROM OrderDetails WHERE CustomerName LIKE '%a%' AND Amount > 50000;
SELECT MAX(Amount) FROM OrderDetails WHERE City IN ('Lahore', 'Hyderabad') AND Quantity > 1;
SELECT MIN(Amount) FROM OrderDetails WHERE City IN ('Karachi', 'Lahore') AND Quantity < 5;
SELECT SUM(Amount) FROM OrderDetails WHERE (ProductName LIKE 'L%' OR ProductName LIKE 'M%') AND Quantity > 1;
SELECT COUNT(DISTINCT ProductName) FROM OrderDetails WHERE City = 'Karachi';
SELECT COUNT(DISTINCT CustomerName) FROM OrderDetails WHERE Amount > 70000;
SELECT SUM(Amount) FROM OrderDetails WHERE CustomerName LIKE 'A%' AND City IN ('Karachi', 'Lahore');
SELECT MAX(Amount) FROM OrderDetails WHERE ProductName LIKE '%o%' AND Quantity > 2;
SELECT MIN(Amount) FROM OrderDetails WHERE CustomerName LIKE '%n' OR City = 'Hyderabad';
SELECT COUNT(*) FROM OrderDetails WHERE ProductName LIKE 'S%' AND Amount > 50000;
SELECT SUM(Quantity) FROM OrderDetails WHERE City IN ('Karachi', 'Lahore', 'Hyderabad') AND Amount > 50000;
SELECT MAX(Amount) FROM OrderDetails WHERE LEFT(CustomerName, 1) BETWEEN 'A' AND 'H';
SELECT SUM(Amount) FROM OrderDetails WHERE CustomerName NOT LIKE 'A%' AND Quantity > 1;