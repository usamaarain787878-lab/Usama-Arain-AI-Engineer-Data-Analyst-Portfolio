-- 1. Database Re-create Karein
USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'Employee_PracticeDB')
BEGIN
    ALTER DATABASE Employee_PracticeDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Employee_PracticeDB;
END
GO

CREATE DATABASE Employee_PracticeDB000;
GO

-- 2. Select Database
USE Employee_PracticeDB000;
GO

-- 3. Create Table
CREATE TABLE Employee (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Email VARCHAR(100),
    Department VARCHAR(50),
    City VARCHAR(50),
    Salary INT,
    Experience INT,
    Phone VARCHAR(20)
);
GO

-- 4. Insert Records
INSERT INTO Employee VALUES (101, 'Ali Khan', 'ali.khan@gmail.com', 'IT', 'Hyderabad', 50000, 2, '03001234567');
INSERT INTO Employee VALUES (102, 'Sara Ahmed', 'sara.ahmed@gmail.com', 'HR', 'Karachi', 65000, 5, '03111234567');
INSERT INTO Employee VALUES (103, 'Ahmed Ali', 'ahmed.ali@yahoo.com', 'IT', 'Hyderabad', 70000, 6, '03221234567');
INSERT INTO Employee VALUES (104, 'Hina Shah', 'hina.shah@gmail.com', 'Finance', 'Karachi', 55000, 3, '03331234567');
INSERT INTO Employee VALUES (105, 'Usman Khan', 'usman.khan@hotmail.com', 'Sales', 'Lahore', 45000, 1, '03441234567');
INSERT INTO Employee VALUES (106, 'Ayesha Malik', 'ayesha.malik@gmail.com', 'HR', 'Hyderabad', 60000, 4, '03051234567');
INSERT INTO Employee VALUES (107, 'Hamza Ali', 'hamza.ali@yahoo.com', 'IT', 'Lahore', 80000, 7, '03151234567');
INSERT INTO Employee VALUES (108, 'Fatima Noor', 'fatima.noor@gmail.com', 'Finance', 'Karachi', 75000, 6, '03251234567');
INSERT INTO Employee VALUES (109, 'Hassan Raza', 'hassan.raza@hotmail.com', 'Sales', 'Hyderabad', 40000, 2, '03351234567');
INSERT INTO Employee VALUES (110, 'Sana Khan', 'sana.khan@gmail.com', 'HR', 'Lahore', 68000, 5, '03451234567');
INSERT INTO Employee VALUES (111, 'Bilal Ahmed', 'bilal.ahmed@yahoo.com', 'IT', 'Karachi', 90000, 8, '03061234567');
INSERT INTO Employee VALUES (112, 'Zainab Ali', 'zainab.ali@gmail.com', 'Finance', 'Hyderabad', 52000, 3, '03161234567');
INSERT INTO Employee VALUES (113, 'Imran Sheikh', 'imran.sheikh@hotmail.com', 'Sales', 'Karachi', 48000, 2, '03261234567');
INSERT INTO Employee VALUES (114, 'Nadia Khan', 'nadia.khan@gmail.com', 'HR', 'Hyderabad', 72000, 6, '03361234567');
INSERT INTO Employee VALUES (115, 'Saad Ahmed', 'saad.ahmed@yahoo.com', 'IT', 'Lahore', 85000, 7, '03461234567');
GO

-- ==========================================
-- SQL Practice Questions Queries (1 to 120)
-- ==========================================

-- 1. Display all employee names in uppercase
SELECT UPPER(EmployeeName) FROM Employee;

-- 2. Display all employee names in lowercase
SELECT LOWER(EmployeeName) FROM Employee;

-- 3. Display employee names and department names in uppercase
SELECT UPPER(EmployeeName), UPPER(Department) FROM Employee;

-- 4. Display employee names and cities in lowercase
SELECT LOWER(EmployeeName), LOWER(City) FROM Employee;

-- 5. Display employee names in uppercase for employees whose salary is greater than 60000
SELECT UPPER(EmployeeName) FROM Employee WHERE Salary > 60000;

-- 6. Display employee names in lowercase for employees working in the HR department
SELECT LOWER(EmployeeName) FROM Employee WHERE Department = 'HR';

-- 7. Display email addresses in uppercase for employees from Karachi
SELECT UPPER(Email) FROM Employee WHERE City = 'Karachi';

-- 8. Display department names in lowercase for employees whose experience is greater than or equal to 5
SELECT LOWER(Department) FROM Employee WHERE Experience >= 5;

-- 9. Display the first 3 characters of every employee name
SELECT LEFT(EmployeeName, 3) FROM Employee;

-- 10. Display the first 4 characters of every employee name
SELECT LEFT(EmployeeName, 4) FROM Employee;

-- 11. Display the first 5 characters of every employee email address
SELECT LEFT(Email, 5) FROM Employee;

-- 12. Display the first 2 characters of every department name
SELECT LEFT(Department, 2) FROM Employee;

-- 13. Display the first 3 characters of every city
SELECT LEFT(City, 3) FROM Employee;

-- 14. Display employee names and the first 4 characters of their phone numbers
SELECT EmployeeName, LEFT(Phone, 4) FROM Employee;

-- 15. Display the first 4 characters of employee names for employees from Hyderabad
SELECT LEFT(EmployeeName, 4) FROM Employee WHERE City = 'Hyderabad';

-- 16. Display the first 3 characters of employee names for employees working in IT or HR
SELECT LEFT(EmployeeName, 3) FROM Employee WHERE Department IN ('IT', 'HR');

-- 17. Display the last 3 characters of every employee name
SELECT RIGHT(EmployeeName, 3) FROM Employee;

-- 18. Display the last 4 digits of every employee phone number
SELECT RIGHT(Phone, 4) FROM Employee;

-- 19. Display the last 5 characters of every employee email address
SELECT RIGHT(Email, 5) FROM Employee;

-- 20. Display the last 2 characters of every department name
SELECT RIGHT(Department, 2) FROM Employee;

-- 21. Display employee names and the last 3 characters of their city names
SELECT EmployeeName, RIGHT(City, 3) FROM Employee;

-- 22. Display the last 4 characters of employee names whose salary is greater than 60000
SELECT RIGHT(EmployeeName, 4) FROM Employee WHERE Salary > 60000;

-- 23. Display the last 3 characters of employee names for employees from Lahore
SELECT RIGHT(EmployeeName, 3) FROM Employee WHERE City = 'Lahore';

-- 24. Display 3 characters from every employee name starting from the second character
SELECT SUBSTRING(EmployeeName, 2, 3) FROM Employee;

-- 25. Display the first 4 characters of every employee name using the SUBSTRING function
SELECT SUBSTRING(EmployeeName, 1, 4) FROM Employee;

-- 26. Display 4 characters from every employee email address starting from the second character
SELECT SUBSTRING(Email, 2, 4) FROM Employee;

-- 27. Display the first 3 characters of every department name using the SUBSTRING function
SELECT SUBSTRING(Department, 1, 3) FROM Employee;

-- 28. Display 5 characters from every phone number starting from the fourth character
SELECT SUBSTRING(Phone, 4, 5) FROM Employee;

-- 29. Display 4 characters from every city starting from the second character
SELECT SUBSTRING(City, 2, 4) FROM Employee;

-- 30. Display 3 characters from every employee name starting from the fourth character
SELECT SUBSTRING(EmployeeName, 4, 3) FROM Employee;

-- 31. Display every employee name along with the total number of characters in the employee name
SELECT EmployeeName, LEN(EmployeeName) FROM Employee;

-- 32. Display every email address along with its length
SELECT Email, LEN(Email) FROM Employee;

-- 33. Display employees whose names contain more than 10 characters
SELECT * FROM Employee WHERE LEN(EmployeeName) > 10;

-- 34. Display employees whose names contain less than 10 characters
SELECT * FROM Employee WHERE LEN(EmployeeName) < 10;

-- 35. Display employees whose department name contains exactly 2 characters
SELECT * FROM Employee WHERE LEN(Department) = 2;

-- 36. Display employees whose city name contains more than 6 characters
SELECT * FROM Employee WHERE LEN(City) > 6;

-- 37. Display employee names and the length of their phone numbers
SELECT EmployeeName, LEN(Phone) FROM Employee;

-- 38. Display employees whose email address length is greater than 20 characters
SELECT * FROM Employee WHERE LEN(Email) > 20;

-- 39. Find the position of the letter 'a' in every employee name
SELECT CHARINDEX('a', EmployeeName) FROM Employee;

-- 40. Find the position of '@' in every employee email address
SELECT CHARINDEX('@', Email) FROM Employee;

-- 41. Find the position of the letter 'i' in every city name
SELECT CHARINDEX('i', City) FROM Employee;

-- 42. Find the position of the word 'Ali' in every employee name
SELECT CHARINDEX('Ali', EmployeeName) FROM Employee;

-- 43. Display employees whose names contain the letter 'K' using the CHARINDEX function
SELECT * FROM Employee WHERE CHARINDEX('K', EmployeeName) > 0;

-- 44. Display employees whose email addresses contain 'gmail' using the CHARINDEX function
SELECT * FROM Employee WHERE CHARINDEX('gmail', Email) > 0;

-- 45. Display employee names along with the position of the letter 'a' in their names
SELECT EmployeeName, CHARINDEX('a', EmployeeName) FROM Employee;

-- 46. Display employees whose department names contain the letter 'a' using CHARINDEX
SELECT * FROM Employee WHERE CHARINDEX('a', Department) > 0;

-- 47. Display employee names in uppercase for employees whose salary is greater than 60000
SELECT UPPER(EmployeeName) FROM Employee WHERE Salary > 60000;

-- 48. Display employee names in lowercase for employees whose experience is greater than or equal to 5
SELECT LOWER(EmployeeName) FROM Employee WHERE Experience >= 5;

-- 49. Display the first 4 characters of employee names for employees whose salary is less than 60000
SELECT LEFT(EmployeeName, 4) FROM Employee WHERE Salary < 60000;

-- 50. Display the last 4 digits of phone numbers for employees whose salary is greater than 50000
SELECT RIGHT(Phone, 4) FROM Employee WHERE Salary > 50000;

-- 51. Display employee names and their lengths for employees whose experience is greater than 4
SELECT EmployeeName, LEN(EmployeeName) FROM Employee WHERE Experience > 4;

-- 52. Display employees whose name length is greater than 9 characters
SELECT * FROM Employee WHERE LEN(EmployeeName) > 9;

-- 53. Display employee names in uppercase for employees from Hyderabad and whose salary is greater than 50000
SELECT UPPER(EmployeeName) FROM Employee WHERE City = 'Hyderabad' AND Salary > 50000;

-- 54. Display the first 3 characters of employee names for employees working in IT or HR
SELECT LEFT(EmployeeName, 3) FROM Employee WHERE Department IN ('IT', 'HR');

-- 55. Display the last 3 characters of employee names for employees whose salary is less than 60000 and experience is greater than 2
SELECT RIGHT(EmployeeName, 3) FROM Employee WHERE Salary < 60000 AND Experience > 2;

-- 56. Display employees whose names contain the letter 'a' using CHARINDEX and whose salary is greater than 50000
SELECT * FROM Employee WHERE CHARINDEX('a', EmployeeName) > 0 AND Salary > 50000;

-- 57. Display employee names in uppercase for employees working in IT, HR, or Finance using the IN operator
SELECT UPPER(EmployeeName) FROM Employee WHERE Department IN ('IT', 'HR', 'Finance');

-- 58. Display employee names in lowercase for employees from Hyderabad, Karachi, or Lahore using the IN operator
SELECT LOWER(EmployeeName) FROM Employee WHERE City IN ('Hyderabad', 'Karachi', 'Lahore');

-- 59. Display the first 4 characters of employee names for employees whose EmployeeID is 101, 105, 110, or 115
SELECT LEFT(EmployeeName, 4) FROM Employee WHERE EmployeeID IN (101, 105, 110, 115);

-- 60. Display the last 4 digits of phone numbers for employees whose experience is 2, 5, or 7
SELECT RIGHT(Phone, 4) FROM Employee WHERE Experience IN (2, 5, 7);

-- 61. Display employees whose department is not equal to IT using the <> operator and display their names in uppercase
SELECT UPPER(EmployeeName) FROM Employee WHERE Department <> 'IT';

-- 62. Display employees whose city is not equal to Karachi and display the first 3 characters of their names
SELECT LEFT(EmployeeName, 3) FROM Employee WHERE City <> 'Karachi';

-- 63. Display the length of employee names for employees whose department is not equal to Sales
SELECT LEN(EmployeeName) FROM Employee WHERE Department <> 'Sales';

-- 64. Display employee names in uppercase whose names start with the letter 'A'
SELECT UPPER(EmployeeName) FROM Employee WHERE EmployeeName LIKE 'A%';

-- 65. Display employee names in lowercase whose names end with the letter 'n'
SELECT LOWER(EmployeeName) FROM Employee WHERE EmployeeName LIKE '%n';

-- 66. Display the first 4 characters of employee names whose names contain 'Ali'
SELECT LEFT(EmployeeName, 4) FROM Employee WHERE EmployeeName LIKE '%Ali%';

-- 67. Display the last 3 characters of employee names whose names contain 'Khan'
SELECT RIGHT(EmployeeName, 3) FROM Employee WHERE EmployeeName LIKE '%Khan%';

-- 68. Display employee names and email lengths for employees whose email addresses contain 'gmail'
SELECT EmployeeName, LEN(Email) FROM Employee WHERE Email LIKE '%gmail%';

-- 69. Display the position of '@' in email addresses that contain 'yahoo'
SELECT CHARINDEX('@', Email) FROM Employee WHERE Email LIKE '%yahoo%';

-- 70. Display employee names in uppercase whose city starts with the letter 'H'
SELECT UPPER(EmployeeName) FROM Employee WHERE City LIKE 'H%';

-- 71. Display employees whose department contains the letter 'a' and show the department name in lowercase
SELECT LOWER(Department) FROM Employee WHERE Department LIKE '%a%';

-- 72. Update the salary of employee ID 101 to 55000
UPDATE Employee SET Salary = 55000 WHERE EmployeeID = 101;

-- 73. Increase the salary of all employees working in the IT department by 5000
UPDATE Employee SET Salary = Salary + 5000 WHERE Department = 'IT';

-- 74. Change the city of employee ID 105 to Hyderabad
UPDATE Employee SET City = 'Hyderabad' WHERE EmployeeID = 105;

-- 75. Increase the salary by 3000 for employees whose experience is greater than 5
UPDATE Employee SET Salary = Salary + 3000 WHERE Experience > 5;

-- 76. Convert all employee names into uppercase using the UPPER function
UPDATE Employee SET EmployeeName = UPPER(EmployeeName);

-- 77. Convert all employee email addresses into lowercase using the LOWER function
UPDATE Employee SET Email = LOWER(Email);

-- 78. Convert department names into uppercase for employees working in IT or HR
UPDATE Employee SET Department = UPPER(Department) WHERE Department IN ('IT', 'HR');

-- 79. Convert employee names into lowercase for employees whose salary is greater than 70000
UPDATE Employee SET EmployeeName = LOWER(EmployeeName) WHERE Salary > 70000;

-- 80. Change the department to Technology for employees whose department is IT
UPDATE Employee SET Department = 'Technology' WHERE Department = 'IT';

-- 81. Increase the salary by 2000 for employees working in HR and living in Hyderabad
UPDATE Employee SET Salary = Salary + 2000 WHERE Department = 'HR' AND City = 'Hyderabad';

-- 82. Change the city to Karachi for employees whose EmployeeID is 101, 106, or 112 using the IN operator
UPDATE Employee SET City = 'Karachi' WHERE EmployeeID IN (101, 106, 112);

-- 83. Increase the salary by 10 percent for employees whose experience is greater than 5 and whose department is IT
UPDATE Employee SET Salary = Salary + (Salary * 0.10) WHERE Experience > 5 AND Department = 'IT';

-- 84. Convert employee names into uppercase for employees whose names contain 'Ali'
UPDATE Employee SET EmployeeName = UPPER(EmployeeName) WHERE EmployeeName LIKE '%Ali%';

-- 85. Convert email addresses into lowercase for employees whose email addresses contain 'GMAIL'
UPDATE Employee SET Email = LOWER(Email) WHERE Email LIKE '%GMAIL%';

-- 86. Update the department to Sales for employees whose city is Lahore and whose experience is less than 3
UPDATE Employee SET Department = 'Sales' WHERE City = 'Lahore' AND Experience < 3;

-- 87. Increase the salary by 5000 for employees whose department is not equal to Sales
UPDATE Employee SET Salary = Salary + 5000 WHERE Department <> 'Sales';

-- 88. Change the city to Hyderabad for employees whose names contain 'Khan'
UPDATE Employee SET City = 'Hyderabad' WHERE EmployeeName LIKE '%Khan%';

-- 89. Delete the employee whose EmployeeID is 115
DELETE FROM Employee WHERE EmployeeID = 115;

-- 90. Delete employees whose salary is less than 45000
DELETE FROM Employee WHERE Salary < 45000;

-- 91. Delete employees whose experience is less than 2
DELETE FROM Employee WHERE Experience < 2;

-- 92. Delete employees working in the Sales department
DELETE FROM Employee WHERE Department = 'Sales';

-- 93. Delete employees whose city is Karachi and whose salary is less than 50000
DELETE FROM Employee WHERE City = 'Karachi' AND Salary < 50000;

-- 94. Delete employees whose names contain 'Ahmed' using the LIKE operator
DELETE FROM Employee WHERE EmployeeName LIKE '%Ahmed%';

-- 95. Delete employees whose email addresses contain 'hotmail'
DELETE FROM Employee WHERE Email LIKE '%hotmail%';

-- 96. Delete employees whose department is not equal to HR using the <> operator
DELETE FROM Employee WHERE Department <> 'HR';

-- 97. Delete employees whose name length is greater than 10 using the LEN function
DELETE FROM Employee WHERE LEN(EmployeeName) > 10;

-- 98. Delete employees whose names contain the letter 'a' using the CHARINDEX function
DELETE FROM Employee WHERE CHARINDEX('a', EmployeeName) > 0;

-- 99. Delete employees whose city is Hyderabad or Lahore and whose experience is less than 3
DELETE FROM Employee WHERE City IN ('Hyderabad', 'Lahore') AND Experience < 3;

-- 100. Delete employees whose salary is greater than 80000
DELETE FROM Employee WHERE Salary > 80000;

-- 101. Delete employees whose names start with the letter 'A'
DELETE FROM Employee WHERE EmployeeName LIKE 'A%';

-- 102. Delete employees whose email addresses contain 'yahoo' and whose salary is less than 80000
DELETE FROM Employee WHERE Email LIKE '%yahoo%' AND Salary < 80000;

-- 103. Delete employees whose department is IT, HR, or Finance using the IN operator
DELETE FROM Employee WHERE Department IN ('IT', 'HR', 'Finance');

-- 104. Display employee names in uppercase where the employee name contains 'Ali' and the salary is greater than 60000
SELECT UPPER(EmployeeName) FROM Employee WHERE EmployeeName LIKE '%Ali%' AND Salary > 60000;

-- 105. Display the first 4 characters of employee names and their departments for employees working in IT, HR, or Finance
SELECT LEFT(EmployeeName, 4), Department FROM Employee WHERE Department IN ('IT', 'HR', 'Finance');

-- 106. Display employee names and the last 4 digits of their phone numbers for employees from Hyderabad or Karachi
SELECT EmployeeName, RIGHT(Phone, 4) FROM Employee WHERE City IN ('Hyderabad', 'Karachi');

-- 107. Display employee names whose email addresses contain 'gmail' and whose salary is greater than or equal to 60000
SELECT EmployeeName FROM Employee WHERE Email LIKE '%gmail%' AND Salary >= 60000;

-- 108. Display employee names and their name lengths where the employee name starts with 'A' or 'S'
SELECT EmployeeName, LEN(EmployeeName) FROM Employee WHERE EmployeeName LIKE 'A%' OR EmployeeName LIKE 'S%';

-- 109. Display employee names and the position of the letter 'a' in their names for employees whose city is not Lahore
SELECT EmployeeName, CHARINDEX('a', EmployeeName) FROM Employee WHERE City <> 'Lahore';

-- 110. Display the first 5 characters of employee email addresses where the department is not equal to Sales
SELECT LEFT(Email, 5) FROM Employee WHERE Department <> 'Sales';

-- 111. Display the last 3 characters of employee names where experience is greater than 3 and less than 7
SELECT RIGHT(EmployeeName, 3) FROM Employee WHERE Experience > 3 AND Experience < 7;

-- 112. Display employee names in lowercase for employees whose city is Hyderabad or Karachi and whose salary is greater than 55000
SELECT LOWER(EmployeeName) FROM Employee WHERE City IN ('Hyderabad', 'Karachi') AND Salary > 55000;

-- 113. Display employee names in uppercase and the length of their names for employees whose department is not Finance
SELECT UPPER(EmployeeName), LEN(EmployeeName) FROM Employee WHERE Department <> 'Finance';

-- 114. Update the salary by increasing it by 5000 for employees whose names contain 'Ali' and whose department is IT
UPDATE Employee SET Salary = Salary + 5000 WHERE EmployeeName LIKE '%Ali%' AND Department = 'IT';

-- 115. Update employee names to uppercase for employees whose city is Hyderabad or Karachi
UPDATE Employee SET EmployeeName = UPPER(EmployeeName) WHERE City IN ('Hyderabad', 'Karachi');

-- 116. Delete employees whose names contain 'Ali' and whose salary is less than 60000
DELETE FROM Employee WHERE EmployeeName LIKE '%Ali%' AND Salary < 60000;

-- 117. Delete employees whose department is IT or Sales and whose experience is less than 3
DELETE FROM Employee WHERE Department IN ('IT', 'Sales') AND Experience < 3;

-- 118. Display employee names in uppercase, the first 3 characters of their city, and the length of their names for employees whose salary is greater than 60000
SELECT UPPER(EmployeeName), LEFT(City, 3), LEN(EmployeeName) FROM Employee WHERE Salary > 60000;

-- 119. Display employee names, the position of '@' in their email addresses, and the last 4 digits of their phone numbers for employees working in HR or Finance
SELECT EmployeeName, CHARINDEX('@', Email), RIGHT(Phone, 4) FROM Employee WHERE Department IN ('HR', 'Finance');

-- 120. Update employee names to lowercase for employees whose names contain 'Khan' and whose experience is greater than or equal to 5
UPDATE Employee SET EmployeeName = LOWER(EmployeeName) WHERE EmployeeName LIKE '%Khan%' AND Experience >= 5;
GO