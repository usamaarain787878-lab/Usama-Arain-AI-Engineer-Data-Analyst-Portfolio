CREATE DATABASE StoreDB1;

USE StoreDB1;

CREATE TABLE Product (
    ProductID int,
    ProductName varchar(20),
    Category varchar(20),
    Brand varchar(20),
    City varchar(20)
);

INSERT INTO Product (ProductID, ProductName, Category, Brand, City) VALUES
(1, 'Laptop', 'Electronics', 'Dell', 'Karachi'),
(2, 'LaptopBag', 'Accessories', 'HP', 'Lahore'),
(3, 'Mobile', 'Electronics', 'Samsung', 'Karachi'),
(4, 'Monitor', 'Electronics', 'Dell', 'Hyderabad'),
(5, 'Keyboard', 'Accessories', 'Logitech', 'Lahore'),
(6, 'Mouse', 'Accessories', 'Logitech', 'Karachi'),
(7, 'Printer', 'Electronics', 'Canon', 'Hyderabad'),
(8, 'Scanner', 'Electronics', 'Canon', 'Lahore'),
(9, 'Tablet', 'Electronics', 'Apple', 'Karachi'),
(10, 'Headphone', 'Accessories', 'Sony', 'Hyderabad'),
(11, 'Charger', 'Accessories', 'Anker', 'Lahore'),
(12, 'Webcam', 'Accessories', 'Logitech', 'Karachi'),
(13, 'Speaker', 'Electronics', 'Sony', 'Hyderabad'),
(14, 'Projector', 'Electronics', 'Epson', 'Lahore'),
(15, 'Microphone', 'Accessories', 'AudioTech', 'Karachi');

SELECT * FROM Product WHERE ProductName LIKE 'Lap%';

SELECT * FROM Product WHERE ProductName LIKE '%er';

SELECT * FROM Product WHERE ProductName LIKE '%phone%';

SELECT * FROM Product WHERE ProductName LIKE 'M%';

SELECT * FROM Product WHERE ProductName LIKE '%r';

SELECT * FROM Product WHERE ProductName LIKE '%o%';

SELECT * FROM Product WHERE ProductName LIKE 'S%';

SELECT * FROM Product WHERE ProductName LIKE '%a%';

SELECT * FROM Product WHERE ProductName LIKE '_____';

SELECT * FROM Product WHERE ProductName LIKE '______';

SELECT * FROM Product WHERE ProductName LIKE 'M___';

SELECT * FROM Product WHERE ProductName LIKE 'S_____';

SELECT * FROM Product WHERE ProductName LIKE '_o%';

SELECT * FROM Product WHERE ProductName LIKE '__e%';

SELECT * FROM Product WHERE ProductName LIKE 'P_______';

SELECT * FROM Product WHERE ProductName LIKE '_____rand' OR ProductName LIKE '_____r';

SELECT * FROM Product WHERE ProductName LIKE 'M_%';

SELECT * FROM Product WHERE ProductName LIKE 'S_%';

SELECT * FROM Product WHERE ProductName LIKE 'P%r';

SELECT * FROM Product WHERE ProductName LIKE 'C%';

SELECT * FROM Product WHERE ProductName LIKE '_o%r';

SELECT * FROM Product WHERE ProductName LIKE 'T__%';

SELECT * FROM Product WHERE Category LIKE 'E%';

SELECT * FROM Product WHERE Category LIKE 'A%';

SELECT * FROM Product WHERE Category LIKE '%s';

SELECT * FROM Product WHERE Category LIKE '%tron%';

SELECT * FROM Product WHERE Category LIKE '___________';

SELECT * FROM Product WHERE Brand LIKE 'D%';

SELECT * FROM Product WHERE Brand LIKE 'Log%';

SELECT * FROM Product WHERE Brand LIKE '%on';

SELECT * FROM Product WHERE Brand LIKE '%so%';

SELECT * FROM Product WHERE Brand LIKE 'A%r';

SELECT * FROM Product WHERE City LIKE 'K%';

SELECT * FROM Product WHERE City LIKE 'H%';

SELECT * FROM Product WHERE City LIKE '%e';

SELECT * FROM Product WHERE City LIKE '%ar%';

SELECT * FROM Product WHERE City LIKE 'La%';

SELECT * FROM Product WHERE City LIKE 'H_%';