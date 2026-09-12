CREATE DATABASE ShopDB;

USE ShopDB;

CREATE TABLE Customer (
CustomerID int,
CustomerName varchar(20),
Gender varchar(20),
City varchar(20),
Membership varchar(20)
);

INSERT INTO Customer VALUES (1, 'Arslan', 'Male', 'Karachi', 'Silver');
INSERT INTO Customer VALUES (2, 'Arsalan', 'Male', 'Lahore', 'Gold');
INSERT INTO Customer VALUES (3, 'Ayesha', 'Female', 'Hyderabad', 'Gold');
INSERT INTO Customer VALUES (4, 'Aisha', 'Female', 'Karachi', 'Silver');
INSERT INTO Customer VALUES (5, 'Bilal', 'Male', 'Lahore', 'Bronze');
INSERT INTO Customer VALUES (6, 'Bilawal', 'Male', 'Hyderabad', 'Gold');
INSERT INTO Customer VALUES (7, 'Farhan', 'Male', 'Karachi', 'Silver');
INSERT INTO Customer VALUES (8, 'Farzana', 'Female', 'Lahore', 'Gold');
INSERT INTO Customer VALUES (9, 'Haseeb', 'Male', 'Hyderabad', 'Bronze');
INSERT INTO Customer VALUES (10, 'Hassan', 'Male', 'Karachi', 'Gold');
INSERT INTO Customer VALUES (11, 'Mahnoor', 'Female', 'Lahore', 'Silver');
INSERT INTO Customer VALUES (12, 'Mehwish', 'Female', 'Hyderabad', 'Bronze');
INSERT INTO Customer VALUES (13, 'Noman', 'Male', 'Karachi', 'Gold');
INSERT INTO Customer VALUES (14, 'Nadia', 'Female', 'Lahore', 'Silver');
INSERT INTO Customer VALUES (15, 'Saad', 'Male', 'Hyderabad', 'Bronze');

SELECT * FROM Customer WHERE CustomerName LIKE 'Ar%';

SELECT * FROM Customer WHERE CustomerName LIKE '%an';

SELECT * FROM Customer WHERE CustomerName LIKE '%han%';

SELECT * FROM Customer WHERE CustomerName LIKE 'M%';

SELECT * FROM Customer WHERE CustomerName LIKE '%a';

SELECT * FROM Customer WHERE CustomerName LIKE '%ad%';

SELECT * FROM Customer WHERE CustomerName LIKE 'No%';

SELECT * FROM Customer WHERE CustomerName LIKE '%is%';

SELECT * FROM Customer WHERE CustomerName LIKE '____';

SELECT * FROM Customer WHERE CustomerName LIKE '_____';

SELECT * FROM Customer WHERE CustomerName LIKE 'A____';

SELECT * FROM Customer WHERE CustomerName LIKE 'S___';

SELECT * FROM Customer WHERE CustomerName LIKE '_a%';

SELECT * FROM Customer WHERE CustomerName LIKE '__s%';

SELECT * FROM Customer WHERE CustomerName LIKE 'M______';

SELECT * FROM Customer WHERE CustomerName LIKE '____a';

SELECT * FROM Customer WHERE CustomerName LIKE 'A_%';

SELECT * FROM Customer WHERE CustomerName LIKE 'H_%';

SELECT * FROM Customer WHERE CustomerName LIKE 'F%a';

SELECT * FROM Customer WHERE CustomerName LIKE '_a%n';

SELECT * FROM Customer WHERE CustomerName LIKE 'M_s';

SELECT * FROM Customer WHERE CustomerName LIKE 'B%';

SELECT CustomerName, City FROM Customer WHERE City LIKE 'K%';

SELECT CustomerName, Membership FROM Customer WHERE Membership LIKE 'G%';

SELECT * FROM Customer WHERE City LIKE '%e';

SELECT * FROM Customer WHERE Membership LIKE '%ver%';

UPDATE Customer SET Membership = 'Gold' WHERE CustomerName LIKE 'A%';

UPDATE Customer SET Membership = 'Silver' WHERE CustomerName LIKE '%a';

UPDATE Customer SET City = 'Karachi' WHERE CustomerName LIKE 'No%';

UPDATE Customer SET Membership = 'Gold' WHERE CustomerName LIKE '%han%';

UPDATE Customer SET Gender = 'Female' WHERE CustomerName LIKE 'M%';

UPDATE Customer SET Membership = 'Bronze' WHERE CustomerName LIKE '____';

DELETE FROM Customer WHERE CustomerName LIKE 'S%';

DELETE FROM Customer WHERE CustomerName LIKE '%a';

DELETE FROM Customer WHERE CustomerName LIKE '%han%';

DELETE FROM Customer WHERE City LIKE 'H%';

DELETE FROM Customer WHERE Membership LIKE 'B%';

DELETE FROM Customer WHERE CustomerName LIKE 'M______';

DELETE FROM Customer WHERE CustomerName LIKE '_a%';

DELETE FROM Customer WHERE CustomerName LIKE 'A%n';