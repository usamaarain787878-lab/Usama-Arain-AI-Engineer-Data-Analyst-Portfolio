CREATE DATABASE CompanyDB;

USE CompanyDB;

CREATE TABLE Employee (
    EmployeeID int,
    EmployeeName varchar(20),
    Department varchar(20),
    City varchar(20),
    Designation varchar(20)
);

INSERT INTO Employee VALUES (1, 'Danish', 'IT', 'Karachi', 'Developer');
INSERT INTO Employee VALUES (2, 'Danial', 'HR', 'Hyderabad', 'Manager');
INSERT INTO Employee VALUES (3, 'Kamran', 'IT', 'Lahore', 'Developer');
INSERT INTO Employee VALUES (4, 'Kiran', 'HR', 'Karachi', 'Officer');
INSERT INTO Employee VALUES (5, 'Bilal', 'Sales', 'Hyderabad', 'Executive');
INSERT INTO Employee VALUES (6, 'Bilawal', 'IT', 'Lahore', 'Developer');
INSERT INTO Employee VALUES (7, 'Sana', 'Sales', 'Karachi', 'Officer');
INSERT INTO Employee VALUES (8, 'Sameer', 'IT', 'Hyderabad', 'Manager');
INSERT INTO Employee VALUES (9, 'Salman', 'HR', 'Lahore', 'Officer');
INSERT INTO Employee VALUES (10, 'Hina', 'IT', 'Karachi', 'Developer');
INSERT INTO Employee VALUES (11, 'Hassan', 'Sales', 'Hyderabad', 'Executive');
INSERT INTO Employee VALUES (12, 'Haris', 'HR', 'Lahore', 'Manager');
INSERT INTO Employee VALUES (13, 'Maria', 'IT', 'Karachi', 'Officer');
INSERT INTO Employee VALUES (14, 'Adeel', 'Sales', 'Hyderabad', 'Executive');
INSERT INTO Employee VALUES (15, 'Adnan', 'IT', 'Lahore', 'Developer');

SELECT * FROM Employee WHERE EmployeeName LIKE '____';

SELECT * FROM Employee WHERE EmployeeName LIKE 'D____';

SELECT * FROM Employee WHERE EmployeeName LIKE 'H____';

SELECT * FROM Employee WHERE EmployeeName LIKE '_a%';

SELECT * FROM Employee WHERE EmployeeName LIKE '___n%';

SELECT * FROM Employee WHERE EmployeeName LIKE 'Sa__';

SELECT * FROM Employee WHERE EmployeeName LIKE 'Ha___';

SELECT * FROM Employee WHERE EmployeeName LIKE 'A__I';

SELECT * FROM Employee WHERE EmployeeName LIKE 'Dan%';

SELECT * FROM Employee WHERE EmployeeName LIKE 'Bil%';

SELECT * FROM Employee WHERE EmployeeName LIKE '%an';

SELECT * FROM Employee WHERE EmployeeName LIKE '%ri%';

SELECT * FROM Employee WHERE EmployeeName LIKE '%sa%';

SELECT * FROM Employee WHERE EmployeeName LIKE 'M%';

SELECT * FROM Employee WHERE EmployeeName LIKE '%I';

SELECT * FROM Employee WHERE EmployeeName NOT LIKE 'A%';

SELECT * FROM Employee WHERE EmployeeName LIKE 'D_%';

SELECT * FROM Employee WHERE EmployeeName LIKE 'K_n';

SELECT * FROM Employee WHERE EmployeeName LIKE 'S_%';

SELECT * FROM Employee WHERE EmployeeName LIKE '_a%n';

SELECT * FROM Employee WHERE EmployeeName LIKE 'A_%';

SELECT * FROM Employee WHERE EmployeeName LIKE 'H_n';

SELECT * FROM Employee WHERE Department LIKE 'I%';

SELECT * FROM Employee WHERE Department LIKE '%R';

SELECT * FROM Employee WHERE Department LIKE '%al%';

SELECT * FROM Employee WHERE Department LIKE '__';

SELECT * FROM Employee WHERE City LIKE 'K%';

SELECT * FROM Employee WHERE City LIKE '%i';

SELECT * FROM Employee WHERE City LIKE '%ar%';

SELECT * FROM Employee WHERE City LIKE 'La%';

SELECT * FROM Employee WHERE City LIKE '________';

SELECT * FROM Employee WHERE Designation LIKE 'Dev%';

SELECT * FROM Employee WHERE Designation LIKE '%er';

SELECT * FROM Employee WHERE Designation LIKE '%cut%';

SELECT * FROM Employee WHERE Designation LIKE 'O_____';

SELECT * FROM Employee WHERE Designation LIKE 'E%e';