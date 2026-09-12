CREATE DATABASE ProjectDB;

USE ProjectDB;

CREATE TABLE [Employee Project] (
    EmployeeID INT,
    EmployeeName VARCHAR(20),
    ProjectName VARCHAR(20),
    Department VARCHAR(20),
    City VARCHAR(20),
    Hours INT,
    Salary INT
);

INSERT INTO [Employee Project] VALUES
(1, 'Ali', 'Banking', 'IT', 'Karachi', 40, 75000),
(2, 'Ahmed', 'Website', 'IT', 'Lahore', 35, 65000),
(3, 'Hamza', 'MobileApp', 'Development', 'Hyderabad', 45, 85000),
(4, 'Bilal', 'Inventory', 'Development', 'Karachi', 30, 60000),
(5, 'Hassan', 'Banking', 'IT', 'Lahore', 42, 90000),
(6, 'Usman', 'Payroll', 'HR', 'Hyderabad', 38, 70000),
(7, 'Salman', 'Website', 'Development', 'Karachi', 32, 72000),
(8, 'Ahsan', 'MobileApp', 'IT', 'Hyderabad', 48, 95000),
(9, 'Danish', 'Inventory', 'Sales', 'Lahore', 28, 55000),
(10, 'Saad', 'Banking', 'Sales', 'Karachi', 36, 62000),
(11, 'Tahir', 'Website', 'IT', 'Lahore', 44, 88000),
(12, 'Farhan', 'Payroll', 'HR', 'Hyderabad', 40, 68000),
(13, 'Kamran', 'Mobile App', 'Development', 'Karachi', 46, 92000),
(14, 'Salman', 'Banking', 'Sales', 'Lahore', 34, 58000),
(15, 'Jawad', 'Inventory', 'IT', 'Hyderabad', 31, 73000),
(16, 'Adeel', 'Website', 'Development', 'Karachi', 39, 81000),
(17, 'Imran', 'MobileApp', 'IT', 'Lahore', 43, 87000),
(18, 'Zain', 'Payroll', 'HR', 'Karachi', 37, 71000),
(19, 'Hassan', 'Banking', 'Development', 'Hyderabad', 41, 89000),
(20, 'Asad', 'Inventory', 'Sales', 'Lahore', 29, 57000);

SELECT SUM(Salary) FROM [Employee Project];

SELECT SUM(Hours) FROM [Employee Project];

SELECT SUM(Salary) FROM [Employee Project] WHERE Department = 'IT';

SELECT SUM(Salary) FROM [Employee Project] WHERE Department = 'Development';

SELECT SUM(Salary) FROM [Employee Project] WHERE Department = 'HR';

SELECT SUM(Salary) FROM [Employee Project] WHERE Department = 'Sales';

SELECT SUM(Salary) FROM [Employee Project] WHERE City = 'Karachi';

SELECT SUM(Salary) FROM [Employee Project] WHERE City = 'Lahore';

SELECT SUM(Salary) FROM [Employee Project] WHERE City = 'Hyderabad';

SELECT SUM(Hours) FROM [Employee Project] WHERE ProjectName = 'Banking';

SELECT SUM(Hours) FROM [Employee Project] WHERE ProjectName = 'Website';

SELECT SUM(Hours) FROM [Employee Project] WHERE ProjectName = 'MobileApp';

SELECT SUM(Salary) FROM [Employee Project] WHERE ProjectName = 'Inventory';

SELECT SUM(Salary) FROM [Employee Project] WHERE Salary > 80000;

SELECT SUM(Hours) FROM [Employee Project] WHERE Hours > 40;

SELECT SUM(Salary) FROM [Employee Project] WHERE Salary < 70000;

SELECT COUNT(*) FROM [Employee Project];

SELECT COUNT(*) FROM [Employee Project] WHERE Department = 'IT';

SELECT COUNT(*) FROM [Employee Project] WHERE Department = 'Development';

SELECT COUNT(*) FROM [Employee Project] WHERE Department = 'HR';

SELECT COUNT(*) FROM [Employee Project] WHERE Department = 'Sales';

SELECT COUNT(*) FROM [Employee Project] WHERE City = 'Karachi';

SELECT COUNT(*) FROM [Employee Project] WHERE City = 'Lahore';

SELECT COUNT(*) FROM [Employee Project] WHERE City = 'Hyderabad';

SELECT COUNT(*) FROM [Employee Project] WHERE ProjectName = 'Banking';

SELECT COUNT(*) FROM [Employee Project] WHERE ProjectName = 'MobileApp';

SELECT COUNT(*) FROM [Employee Project] WHERE Salary > 80000;

SELECT COUNT(*) FROM [Employee Project] WHERE Hours > 40;

SELECT COUNT(*) FROM [Employee Project] WHERE Salary <= 70000;

SELECT COUNT(EmployeeName) FROM [Employee Project];

SELECT COUNT(Salary) FROM [Employee Project];

SELECT MAX(Salary) FROM [Employee Project];

SELECT MAX(Salary) FROM [Employee Project] WHERE Department = 'IT';

SELECT MAX(Salary) FROM [Employee Project] WHERE Department = 'Development';

SELECT MAX(Salary) FROM [Employee Project] WHERE Department = 'HR';

SELECT MAX(Salary) FROM [Employee Project] WHERE Department = 'Sales';

SELECT MAX(Salary) FROM [Employee Project] WHERE City = 'Karachi';

SELECT MAX(Salary) FROM [Employee Project] WHERE City = 'Lahore';

SELECT MAX(Salary) FROM [Employee Project] WHERE City = 'Hyderabad';

SELECT MAX(Hours) FROM [Employee Project];

SELECT MAX(Salary) FROM [Employee Project] WHERE Hours > 40;

SELECT MIN(Salary) FROM [Employee Project];

SELECT MIN(Salary) FROM [Employee Project] WHERE Department = 'IT';

SELECT MIN(Salary) FROM [Employee Project] WHERE Department = 'Development';

SELECT MIN(Salary) FROM [Employee Project] WHERE Department = 'HR';

SELECT MIN(Salary) FROM [Employee Project] WHERE Department = 'Sales';

SELECT MIN(Salary) FROM [Employee Project] WHERE City = 'Karachi';

SELECT MIN(Salary) FROM [Employee Project] WHERE City = 'Lahore';

SELECT MIN(Salary) FROM [Employee Project] WHERE City = 'Hyderabad';

SELECT MIN(Hours) FROM [Employee Project];

SELECT MIN(Salary) FROM [Employee Project] WHERE Hours > 35;

SELECT SUM(Salary) FROM [Employee Project] WHERE Salary > 75000;

SELECT COUNT(*) FROM [Employee Project] WHERE Salary < 70000;

SELECT MAX(Salary) FROM [Employee Project] WHERE Hours >= 40;

SELECT MIN(Salary) FROM [Employee Project] WHERE Hours < 35;

SELECT SUM(Hours) FROM [Employee Project] WHERE Salary >= 80000;

SELECT COUNT(*) FROM [Employee Project] WHERE Salary <> 70000;

SELECT SUM(Salary) FROM [Employee Project] WHERE Hours <= 35;

SELECT SUM(Salary) FROM [Employee Project] WHERE City = 'Karachi' AND Department = 'IT';

SELECT COUNT(*) FROM [Employee Project] WHERE City = 'Lahore' AND Department = 'Development';

SELECT MAX(Salary) FROM [Employee Project] WHERE City = 'Hyderabad' AND Hours > 40;

SELECT MIN(Salary) FROM [Employee Project] WHERE City = 'Karachi' AND Hours < 40;

SELECT SUM(Salary) FROM [Employee Project] WHERE Salary > 80000 AND Hours > 40;

SELECT COUNT(*) FROM [Employee Project] WHERE Salary < 80000 AND Hours > 35;

SELECT MAX(Salary) FROM [Employee Project] WHERE ProjectName = 'Banking' AND Salary > 70000;

SELECT SUM(Hours) FROM [Employee Project] WHERE ProjectName = 'MobileApp' AND Hours > 40;

SELECT SUM(Salary) FROM [Employee Project] WHERE City = 'Karachi' OR City = 'Lahore';

SELECT COUNT(*) FROM [Employee Project] WHERE City = 'Hyderabad' OR City = 'Karachi';

SELECT MAX(Salary) FROM [Employee Project] WHERE Department = 'IT' OR Department = 'Development';

SELECT MIN(Salary) FROM [Employee Project] WHERE Department = 'HR' OR Department = 'Sales';

SELECT SUM(Hours) FROM [Employee Project] WHERE ProjectName = 'Banking' OR ProjectName = 'Website';

SELECT COUNT(*) FROM [Employee Project] WHERE Salary > 90000 OR Hours > 45;

SELECT SUM(Salary) FROM [Employee Project] WHERE City IN ('Karachi', 'Lahore', 'Hyderabad');

SELECT COUNT(*) FROM [Employee Project] WHERE Department IN ('IT', 'HR', 'Sales');

SELECT MAX(Salary) FROM [Employee Project] WHERE ProjectName IN ('Banking', 'Website', 'MobileApp');

SELECT MIN(Salary) FROM [Employee Project] WHERE City IN ('Karachi', 'Hyderabad');

SELECT SUM(Hours) FROM [Employee Project] WHERE ProjectName IN ('Inventory', 'Payroll', 'Banking');

SELECT SUM(Salary) FROM [Employee Project] WHERE EmployeeName LIKE 'A%';

SELECT COUNT(*) FROM [Employee Project] WHERE EmployeeName LIKE 'S%';

SELECT MAX(Salary) FROM [Employee Project] WHERE EmployeeName LIKE '%n';

SELECT MIN(Salary) FROM [Employee Project] WHERE EmployeeName LIKE '%a%';

SELECT SUM(Hours) FROM [Employee Project] WHERE EmployeeName LIKE 'H%';

SELECT COUNT(*) FROM [Employee Project] WHERE ProjectName LIKE 'B%';

SELECT MAX(Salary) FROM [Employee Project] WHERE ProjectName LIKE '%App%';

SELECT SUM(Salary) FROM [Employee Project] WHERE Department LIKE '%T';

SELECT COUNT(DISTINCT EmployeeName) FROM [Employee Project];

SELECT COUNT(DISTINCT ProjectName) FROM [Employee Project];

SELECT COUNT(DISTINCT Department) FROM [Employee Project];

SELECT COUNT(DISTINCT City) FROM [Employee Project];

SELECT COUNT(DISTINCT Salary) FROM [Employee Project];

SELECT MAX(Salary) FROM (SELECT DISTINCT Salary FROM [Employee Project]) AS T;

SELECT MIN(Salary) FROM (SELECT DISTINCT Salary FROM [Employee Project]) AS T;

SELECT SUM(Salary) FROM [Employee Project] WHERE (City = 'Karachi' OR City = 'Lahore') AND Salary > 70000;

SELECT COUNT(*) FROM [Employee Project] WHERE Department IN ('IT', 'Development', 'HR') AND Hours > 35;

SELECT MAX(Salary) FROM [Employee Project] WHERE (EmployeeName LIKE 'A%' OR EmployeeName LIKE 'H%') AND Hours > 40;

SELECT MIN(Salary) FROM [Employee Project] WHERE City IN ('Karachi', 'Lahore', 'Hyderabad') AND (ProjectName LIKE 'B%' OR ProjectName LIKE 'W%');