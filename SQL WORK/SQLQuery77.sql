-- 1. Check & Select Database (Apne database ka naam use karein)
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'StudentPracticeDB')
BEGIN
    CREATE DATABASE StudentPracticeDB;
END
GO

USE StudentPracticeDB090;
GO

-- 2. Drop Table if exists (Naye siray se banane ke liye)
IF OBJECT_ID('Students', 'U') IS NOT NULL
    DROP TABLE Students;
GO

-- 3. Create Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);
GO

-- 4. Insert Sample Data
INSERT INTO Students (StudentID, Name, Email) VALUES
(1, 'Ali Khan', 'ali.khan@gmail.com'),
(2, 'Usman Ahmed', 'usman.ahmed@yahoo.com'),
(3, 'Sara Malik', 'sara.malik@gmail.com'),
(4, 'Hamza Shah', 'hamza.shah@hotmail.com'),
(5, 'Ayesha Raza', 'ayesha.raza@gmail.com');
GO

-- ==========================================
-- SQL Queries (1 to 42)
-- ==========================================

-- 1
SELECT LEFT(Name, CHARINDEX(' ', Name) - 1) AS FirstName FROM Students;

-- 2
SELECT RIGHT(Name, LEN(Name) - CHARINDEX(' ', Name)) AS LastName FROM Students;

-- 3
SELECT SUBSTRING(Name, 1, CHARINDEX(' ', Name) - 1) AS FirstName FROM Students;

-- 4
SELECT SUBSTRING(Name, CHARINDEX(' ', Name) + 1, LEN(Name)) AS LastName FROM Students;

-- 5
SELECT UPPER(LEFT(Name, CHARINDEX(' ', Name) - 1)) AS FirstName FROM Students;

-- 6
SELECT LOWER(RIGHT(Name, LEN(Name) - CHARINDEX(' ', Name))) AS LastName FROM Students;

-- 7
SELECT CHARINDEX(' ', UPPER(Name)) AS Position FROM Students;

-- 8
SELECT LEFT(Name, CHARINDEX(' ', Name) - 1) AS Result FROM Students;

-- 9
SELECT RIGHT(Name, LEN(Name) - CHARINDEX(' ', Name)) AS Result FROM Students;

-- 10
SELECT RIGHT(Email, LEN(Email) - CHARINDEX('@', Email)) AS Domain FROM Students;

-- 11
SELECT LEFT(Email, CHARINDEX('@', Email) - 1) AS Username FROM Students;

-- 12
SELECT UPPER(LEFT(LEFT(Name, CHARINDEX(' ', Name) - 1), 3)) AS Result FROM Students;

-- 13
SELECT LOWER(LEFT(Name, CHARINDEX(' ', Name) - 1)) AS FirstName FROM Students;

-- 14
SELECT StudentID, Name, Email FROM Students WHERE CHARINDEX('gmail', Email) > 0;

-- 15
SELECT StudentID, Name, Email FROM Students WHERE RIGHT(Name, LEN(Name) - CHARINDEX(' ', Name)) = 'Khan';

-- 16
SELECT Name FROM Students WHERE LEN(LEFT(Name, CHARINDEX(' ', Name) - 1)) > 4;

-- 17
SELECT LEFT(LEFT(Name, CHARINDEX(' ', Name) - 1), 2) AS Result FROM Students;

-- 18
SELECT UPPER(RIGHT(Name, LEN(Name) - CHARINDEX(' ', Name))) AS LastName FROM Students;

-- 19
SELECT Name FROM Students WHERE CHARINDEX('A', UPPER(Name)) > 0;

-- 20
SELECT Name, LEN(LEFT(Name, CHARINDEX(' ', Name) - 1)) AS FirstNameLength FROM Students;

-- 21
SELECT UPPER(REPLACE(Name, ' ', '-')) AS Name FROM Students;

-- 22
SELECT UPPER(REPLACE(Email, '@', ' - ')) AS Result FROM Students;

-- 23
SELECT LOWER(REPLACE(Name, ' ', '')) AS Name FROM Students;

-- 24
SELECT UPPER(REPLACE(Email, '.com', '.pk')) AS Email FROM Students;

-- 25
SELECT UPPER(LEFT(Name, 3)) AS Result FROM Students;

-- 26
SELECT LOWER(RIGHT(Name, 3)) AS Result FROM Students;

-- 27
SELECT UPPER(REVERSE(Name)) AS Result FROM Students;

-- 28
SELECT LOWER(REVERSE(Name)) AS Result FROM Students;

-- 29
SELECT LEFT(REVERSE(Name), 4) AS Result FROM Students;

-- 30
SELECT RIGHT(REVERSE(Name), 4) AS Result FROM Students;

-- 31
SELECT UPPER(SPACE(3) + Name) FROM Students;

-- 32
SELECT REPLICATE(LEFT(Name, 3), 2) AS Result FROM Students;

-- 33
SELECT REPLICATE(RIGHT(Name, 3), 3) AS Result FROM Students;

-- 34
SELECT REPLICATE(UPPER(LEFT(Name, 2)), 3) AS Result FROM Students;

-- 35
SELECT REPLICATE(LOWER(RIGHT(Name, 2)), 2) AS Result FROM Students;

-- 36
SELECT UPPER(REVERSE(REPLACE(Name, ' ', ''))) AS Result FROM Students;

-- 37
SELECT REVERSE(REPLACE(Name, ' ', '_')) AS Result FROM Students;

-- 38
SELECT LOWER(SUBSTRING(Name, 1, 5)) AS Result FROM Students;

-- 39
SELECT UPPER(LEFT(REVERSE(Name), 4)) AS Result FROM Students;

-- 40
SELECT Name, LEN(REPLACE(Name, ' ', '')) AS Length FROM Students;

-- 41
SELECT RIGHT(REPLACE(Name, ' ', '*'), 5) AS Result FROM Students;

-- 42
SELECT LEFT(REVERSE(Email), 5) AS Result FROM Students;
GO