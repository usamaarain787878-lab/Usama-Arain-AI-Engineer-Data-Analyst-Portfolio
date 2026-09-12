CREATE DATABASE CompanyDB02;

USE CompanyDB02;

CREATE TABLE Employee (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    City VARCHAR(50),
    Salary INT,
    Email VARCHAR(100)
);

INSERT INTO Employee (EmployeeID, EmployeeName, Department, City, Salary, Email) VALUES
(1, 'Ali', 'IT', 'Hyderabad', 60000, 'ali@gmail.com'),
(2, 'Ahmed', 'HR', 'Karachi', 50000, 'ahmed@gmail.com'),
(3, 'Bilal', 'IT', 'Hyderabad', 70000, NULL),
(4, 'Danish', 'Sales', 'Karachi', 55000, 'danish@gmail.com'),
(5, 'Hamza', 'HR', 'Hyderabad', 45000, NULL),
(6, 'Usman', 'IT', 'Karachi', 65000, 'usman@gmail.com'),
(7, 'Hassan', 'Sales', 'Hyderabad', 50000, 'hassan@gmail.com'),
(8, 'Fahad', 'Sales', 'Karachi', 60000, NULL),
(9, 'Salman', 'HR', 'Hyderabad', 55000, 'salman@gmail.com'),
(10, 'Saad', 'IT', 'Karachi', 75000, NULL);

SELECT COUNT(*) FROM Employee;

SELECT COUNT(EmployeeName) FROM Employee;

SELECT COUNT(Email) FROM Employee;

SELECT COUNT(*) FROM Employee;

SELECT COUNT(*) FROM Employee WHERE Department = 'IT';

SELECT COUNT(*) FROM Employee WHERE Department = 'HR';

SELECT COUNT(*) FROM Employee WHERE Department = 'Sales';

SELECT COUNT(*) FROM Employee WHERE Salary = 60000;

SELECT COUNT(*) FROM Employee WHERE Salary > 55000;

SELECT COUNT(*) FROM Employee WHERE City = 'Karachi';

SELECT COUNT(*) FROM Employee WHERE City = 'Hyderabad';

SELECT COUNT(*) FROM Employee WHERE Email IS NULL;

SELECT COUNT(*) FROM Employee WHERE EmployeeName LIKE 'A%';

SELECT COUNT(*) FROM Employee WHERE EmployeeName LIKE 'S%';

SELECT COUNT(*) FROM Employee WHERE Department = 'IT' AND City = 'Karachi';