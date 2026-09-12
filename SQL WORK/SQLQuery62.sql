CREATE DATABASE SalesDB;

USE SalesDB;

CREATE TABLE Product (
    ProductID int,
    ProductName varchar(20),
    Category varchar(20),
    Brand varchar(20),
    Price int,
    Stock int
);

INSERT INTO Product VALUES 
(1, 'Laptop', 'Computer', 'Dell', 85000, 12),
(2, 'Monitor', 'Computer', 'HP', 35000, 18),
(3, 'Keyboard', 'Accessory', 'Logitech', 5000, 30),
(4, 'Mouse', 'Accessory', 'Logitech', 3000, 45),
(5, 'Printer', 'Office', 'Canon', 28000, 15),
(6, 'Scanner', 'Office', 'Canon', 22000, 10),
(7, 'Tablet', 'Mobile', 'Samsung', 55000, 20),
(8, 'Mobile', 'Mobile', 'Samsung', 75000, 25),
(9, 'Headphone', 'Accessory', 'Sony', 12000, 35),
(10, 'Speaker', 'Accessory', 'Sony', 18000, 22),
(11, 'Camera', 'Camera', 'Canon', 95000, 8),
(12, 'Webcam', 'Computer', 'Logitech', 8000, 28);

SELECT SUM(Price) FROM Product;

SELECT SUM(Stock) FROM Product;

SELECT SUM(Price) FROM Product WHERE Price > 50000;

SELECT SUM(Stock) FROM Product WHERE Price < 30000;

SELECT SUM(Price) FROM Product WHERE Category = 'Computer';

SELECT SUM(Price) FROM Product WHERE Category = 'Mobile' OR Category = 'Camera';

SELECT SUM(Price) FROM Product WHERE Brand = 'Samsung' OR Brand = 'Sony';

SELECT SUM(Stock) FROM Product WHERE Brand = 'Canon' AND Price > 20000;

SELECT SUM(Price) FROM Product WHERE Price > 10000 AND Stock > 20;

SELECT SUM(Price) FROM Product WHERE ProductName LIKE 'M%';

SELECT SUM(Price) FROM Product WHERE ProductName LIKE '%o%';

SELECT COUNT(*) FROM Product;

SELECT COUNT(*) FROM Product WHERE Category = 'Accessory';

SELECT COUNT(*) FROM Product WHERE Price > 50000;

SELECT COUNT(*) FROM Product WHERE Stock < 15;

SELECT COUNT(*) FROM Product WHERE Brand = 'Canon';

SELECT COUNT(*) FROM Product WHERE Brand = 'Samsung' OR Brand = 'Sony';

SELECT COUNT(*) FROM Product WHERE Price >= 10000 AND Price <= 50000;

SELECT COUNT(*) FROM Product WHERE ProductName LIKE 'S%';

SELECT COUNT(*) FROM Product WHERE ProductName LIKE '%r';

SELECT COUNT(*) FROM Product WHERE Stock > 20 AND Price < 50000;

SELECT MAX(Price) FROM Product;

SELECT MAX(Price) FROM Product WHERE Category = 'Computer';

SELECT MAX(Price) FROM Product WHERE Brand = 'Canon';

SELECT MAX(Price) FROM Product WHERE Stock > 20;

SELECT MAX(Price) FROM Product WHERE Category = 'Mobile' OR Category = 'Camera';

SELECT MAX(Price) FROM Product WHERE ProductName LIKE 'S%';

SELECT MAX(Stock) FROM Product WHERE Price > 20000;

SELECT MIN(Price) FROM Product;

SELECT MIN(Price) FROM Product WHERE Category = 'Accessory';

SELECT MIN(Price) FROM Product WHERE Brand = 'Logitech';

SELECT MIN(Price) FROM Product WHERE Stock > 20;

SELECT MIN(Price) FROM Product WHERE Category = 'Computer' OR Category = 'Office';

SELECT MIN(Stock) FROM Product WHERE Price > 50000;

SELECT MIN(Price) FROM Product WHERE ProductName LIKE '%o%';

SELECT COUNT(DISTINCT Category) FROM Product;

SELECT COUNT(DISTINCT Brand) FROM Product;

SELECT SUM(DISTINCT Price) FROM Product;

SELECT MIN(DISTINCT Price) FROM Product;

SELECT MAX(DISTINCT Price) FROM Product;

SELECT COUNT(DISTINCT Stock) FROM Product;

SELECT SUM(Price) FROM Product WHERE Category IN ('Computer', 'Mobile', 'Office');

SELECT COUNT(*) FROM Product WHERE Brand IN ('Canon', 'Sony', 'Samsung');

SELECT MAX(Price) FROM Product WHERE Category IN ('Accessory', 'Computer');

SELECT MIN(Price) FROM Product WHERE Brand IN ('Logitech', 'Canon');

SELECT SUM(Stock) FROM Product WHERE Category IN ('Mobile', 'Camera', 'Office');

SELECT SUM(Price) FROM Product WHERE Price > 20000 AND Stock > 15;

SELECT COUNT(*) FROM Product WHERE Price < 20000 OR Stock > 30;

SELECT MAX(Price) FROM Product WHERE Category = 'Computer' AND Stock > 15;

SELECT MIN(Price) FROM Product WHERE Category = 'Accessory' OR Brand = 'Canon';

SELECT SUM(Stock) FROM Product WHERE Price > 50000 AND Brand = 'Samsung';

SELECT COUNT(*) FROM Product WHERE (Category = 'Office' OR Category = 'Computer') AND Stock > 10;