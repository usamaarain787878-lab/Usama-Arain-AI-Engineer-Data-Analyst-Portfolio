-- ==========================================
-- 0. Purane Table Ko Khatam (Drop) Karein
-- ==========================================
IF OBJECT_ID('Employee', 'U') IS NOT NULL
    DROP TABLE Employee;
GO

-- ==========================================
-- 1. Naya Table Banayein
-- ==========================================
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    JoiningDate DATE,
    Salary INT
);
GO

-- ==========================================
-- 2. Records Insert Karein
-- ==========================================
INSERT INTO Employee (EmployeeID, EmployeeName, Department, JoiningDate, Salary) VALUES
(1, 'Ali Khan', 'IT', '2024-01-15', 60000),
(2, 'Ahmed Raza', 'HR', '2023-06-10', 55000),
(3, 'Sara Ahmed', 'Finance', '2025-02-20', 65000),
(4, 'Usman Ali', 'IT', '2022-11-05', 75000),
(5, 'Ayesha Khan', 'Marketing', '2024-08-12', 58000),
(6, 'Bilal Ahmed', 'Sales', '2025-01-10', 50000),
(7, 'Hina Raza', 'HR', '2023-09-18', 57000),
(8, 'Hamza Ali', 'Finance', '2024-03-25', 62000);
GO

-- ==========================================
-- 3. Number of days worked
-- ==========================================
SELECT EmployeeID, EmployeeName, DATEDIFF(DAY, JoiningDate, GETDATE()) AS DaysWorked
FROM Employee;

-- ==========================================
-- 4. Number of years worked
-- ==========================================
SELECT EmployeeID, EmployeeName, DATEDIFF(YEAR, JoiningDate, GETDATE()) AS YearsWorked
FROM Employee;

-- ==========================================
-- 5. Number of months worked
-- ==========================================
SELECT EmployeeID, EmployeeName, DATEDIFF(MONTH, JoiningDate, GETDATE()) AS MonthsWorked
FROM Employee;

-- ==========================================
-- 6. Number of weeks worked
-- ==========================================
SELECT EmployeeID, EmployeeName, DATEDIFF(WEEK, JoiningDate, GETDATE()) AS WeeksWorked
FROM Employee;

-- ==========================================
-- 7. Display EmployeeName, JoiningDate, and Days Worked
-- ==========================================
SELECT EmployeeName, JoiningDate, DATEDIFF(DAY, JoiningDate, GETDATE()) AS DaysWorked
FROM Employee;

-- ==========================================
-- 8. Worked for more than 2 years
-- ==========================================
SELECT * FROM Employee
WHERE DATEDIFF(YEAR, JoiningDate, GETDATE()) > 2;

-- ==========================================
-- 9. Worked for less than 2 years
-- ==========================================
SELECT * FROM Employee
WHERE DATEDIFF(YEAR, JoiningDate, GETDATE()) < 2;

-- ==========================================
-- 10. Worked for more than 500 days
-- ==========================================
SELECT * FROM Employee
WHERE DATEDIFF(DAY, JoiningDate, GETDATE()) > 500;

-- ==========================================
-- 11. Worked for more than 3 years
-- ==========================================
SELECT * FROM Employee
WHERE DATEDIFF(YEAR, JoiningDate, GETDATE()) > 3;

-- ==========================================
-- 12. Completed at least 12 months of service
-- ==========================================
SELECT * FROM Employee
WHERE DATEDIFF(MONTH, JoiningDate, GETDATE()) >= 12;

-- ==========================================
-- 13. Joined within the last 2 years
-- ==========================================
SELECT * FROM Employee
WHERE JoiningDate >= DATEADD(YEAR, -2, GETDATE());

-- ==========================================
-- 14. Number of quarters worked
-- ==========================================
SELECT EmployeeID, EmployeeName, DATEDIFF(QUARTER, JoiningDate, GETDATE()) AS QuartersWorked
FROM Employee;

-- ==========================================
-- 15. Days between joining date and current date
-- ==========================================
SELECT EmployeeName, DATEDIFF(DAY, JoiningDate, GETDATE()) AS DaysBetween
FROM Employee;

-- ==========================================
-- 16. Completed more than 1,000 days
-- ==========================================
SELECT * FROM Employee
WHERE DATEDIFF(DAY, JoiningDate, GETDATE()) > 1000;

-- ==========================================
-- 17. Joining date is more than 3 years ago
-- ==========================================
SELECT * FROM Employee
WHERE JoiningDate < DATEADD(YEAR, -3, GETDATE());

-- ==========================================
-- 18. Display Name, Department, JoiningDate, Years, Months, Days Worked
-- ==========================================
SELECT 
    EmployeeName, 
    Department, 
    JoiningDate, 
    DATEDIFF(YEAR, JoiningDate, GETDATE()) AS YearsWorked,
    DATEDIFF(MONTH, JoiningDate, GETDATE()) AS MonthsWorked,
    DATEDIFF(DAY, JoiningDate, GETDATE()) AS DaysWorked
FROM Employee;

-- ==========================================
-- 19. Working for more than 1 year but less than 4 years
-- ==========================================
SELECT * FROM Employee
WHERE DATEDIFF(YEAR, JoiningDate, GETDATE()) > 1 
  AND DATEDIFF(YEAR, JoiningDate, GETDATE()) < 4;

-- ==========================================
-- 20. Worked for more than 100 weeks
-- ==========================================
SELECT * FROM Employee
WHERE DATEDIFF(WEEK, JoiningDate, GETDATE()) > 100;

-- ==========================================
-- 21. Worked for more than 10 quarters
-- ==========================================
SELECT * FROM Employee
WHERE DATEDIFF(QUARTER, JoiningDate, GETDATE()) > 10;

-- ==========================================
-- 22. Joined before 2024 with total days worked
-- ==========================================
SELECT EmployeeID, EmployeeName, JoiningDate, DATEDIFF(DAY, JoiningDate, GETDATE()) AS TotalDaysWorked
FROM Employee
WHERE YEAR(JoiningDate) < 2024;

-- ==========================================
-- 23. Employee names and total months of service, sorted
-- ==========================================
SELECT EmployeeName, DATEDIFF(MONTH, JoiningDate, GETDATE()) AS TotalMonthsOfService
FROM Employee
ORDER BY TotalMonthsOfService DESC;