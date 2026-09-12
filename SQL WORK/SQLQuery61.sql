CREATE DATABASE CompanyDB0;

USE CompanyDB0;

CREATE TABLE Employee (
    EmployeeID int,
    EmployeeName varchar(20),
    Department varchar(20),
    City varchar(20),
    Salary int,
    Age int
);

INSERT INTO Employee VALUES 
(1, 'Ali', 'IT', 'Karachi', 55000, 25),
(2, 'Ahmed', 'HR', 'Lahore', 65000, 29),
(3, 'Hamza', 'IT', 'Hyderabad', 75000, 32),
(4, 'Bilal', 'Sales', 'Karachi', 50000, 24),
(5, 'Hassan', 'IT', 'Lahore', 85000, 35),
(6, 'Usman', 'HR', 'Hyderabad', 70000, 30),
(7, 'Salman', 'Sales', 'Karachi', 60000, 27),
(8, 'Ahsan', 'IT', 'Hyderabad', 90000, 38),
(9, 'Danish', 'HR', 'Lahore', 72000, 31),
(10, 'Saad', 'Sales', 'Karachi', 48000, 23),
(11, 'Naeem', 'IT', 'Lahore', 80000, 34),
(12, 'Farhan', 'HR', 'Hyderabad', 68000, 28);

SELECT SUM(Salary) FROM Employee;

SELECT SUM(Salary) FROM Employee WHERE Department = 'IT';

SELECT SUM(Salary) FROM Employee WHERE Department = 'HR';

SELECT SUM(Salary) FROM Employee WHERE Department = 'Sales';

SELECT SUM(Salary) FROM Employee WHERE City = 'Karachi';

SELECT SUM(Salary) FROM Employee WHERE City = 'Lahore';

SELECT SUM(Salary) FROM Employee WHERE City = 'Hyderabad';

SELECT SUM(Salary) FROM Employee WHERE Salary > 70000;

SELECT SUM(Salary) FROM Employee WHERE Age > 30;

SELECT SUM(Salary) FROM Employee WHERE EmployeeName LIKE 'A%';

SELECT SUM(Salary) FROM Employee WHERE EmployeeName LIKE '%n';

SELECT SUM(Salary) AS TotalSalary FROM Employee;

SELECT COUNT(*) FROM Employee;

SELECT COUNT(*) FROM Employee WHERE Department = 'IT';

SELECT COUNT(*) FROM Employee WHERE Department = 'HR';

SELECT COUNT(*) FROM Employee WHERE Department = 'Sales';

SELECT COUNT(*) FROM Employee WHERE City = 'Karachi';

SELECT COUNT(*) FROM Employee WHERE City = 'Lahore';

SELECT COUNT(*) FROM Employee WHERE City = 'Hyderabad';

SELECT COUNT(*) FROM Employee WHERE Salary > 70000;

SELECT COUNT(*) FROM Employee WHERE Salary < 60000;

SELECT COUNT(*) FROM Employee WHERE Age > 30;

SELECT COUNT(*) FROM Employee WHERE EmployeeName LIKE 'A%';

SELECT COUNT(*) FROM Employee WHERE EmployeeName LIKE '%a%';

SELECT COUNT(Salary) FROM Employee;

SELECT COUNT(EmployeeName) FROM Employee;

SELECT MAX(Salary) FROM Employee;

SELECT MAX(Salary) FROM Employee WHERE Department = 'IT';

SELECT MAX(Salary) FROM Employee WHERE Department = 'HR';

SELECT MAX(Salary) FROM Employee WHERE Department = 'Sales';

SELECT MAX(Salary) FROM Employee WHERE City = 'Karachi';

SELECT MAX(Salary) FROM Employee WHERE City = 'Lahore';

SELECT MAX(Salary) FROM Employee WHERE City = 'Hyderabad';

SELECT MAX(Salary) FROM Employee WHERE Age > 30;

SELECT MAX(Age) FROM Employee;

SELECT MAX(Age) FROM Employee WHERE Department = 'IT';

SELECT MIN(Salary) FROM Employee;

SELECT MIN(Salary) FROM Employee WHERE Department = 'IT';

SELECT MIN(Salary) FROM Employee WHERE Department = 'HR';

SELECT MIN(Salary) FROM Employee WHERE Department = 'Sales';

SELECT MIN(Salary) FROM Employee WHERE City = 'Karachi';

SELECT MIN(Salary) FROM Employee WHERE City = 'Lahore';

SELECT MIN(Salary) FROM Employee WHERE City = 'Hyderabad';

SELECT MIN(Salary) FROM Employee WHERE Age > 30;

SELECT MIN(Age) FROM Employee;

SELECT MIN(Age) FROM Employee WHERE Department = 'Sales';

SELECT SUM(Salary), MAX(Salary), MIN(Salary), COUNT(*) FROM Employee;

SELECT SUM(Salary), COUNT(*) FROM Employee WHERE Department = 'IT';

SELECT MAX(Salary), MIN(Salary) FROM Employee WHERE Department = 'HR';

SELECT SUM(Salary), MAX(Salary) FROM Employee WHERE Department = 'Sales';

SELECT COUNT(*), SUM(Salary) FROM Employee WHERE City = 'Karachi';

SELECT COUNT(*), MAX(Salary), MIN(Salary) FROM Employee WHERE City = 'Lahore';

SELECT SUM(Salary), MAX(Salary), MIN(Salary) FROM Employee WHERE City = 'Hyderabad';

SELECT COUNT(*), SUM(Salary) FROM Employee WHERE Salary > 70000;

SELECT MAX(Salary), MIN(Salary) FROM Employee WHERE EmployeeName LIKE 'A%';

SELECT SUM(Salary), COUNT(*) FROM Employee WHERE EmployeeName LIKE '%a%';