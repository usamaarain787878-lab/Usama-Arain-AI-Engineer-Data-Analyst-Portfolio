-- 1. Table Check Karke Drop aur Naya Banayein
IF OBJECT_ID('Employee', 'U') IS NOT NULL
    DROP TABLE Employee;
GO

CREATE TABLE Employee
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    BirthDate DATE,
    [Joining Date] DATE
);
GO

-- 2. Sample Data Insert Karein
INSERT INTO Employee VALUES
(1, 'Ali', '1995-05-10', '2022-01-15'),
(2, 'Sara', '1996-12-01', '2022-09-18'),
(3, 'Usman', '1998-03-22', '2023-01-01'),
(4, 'Ayesha', '1994-08-15', '2023-06-20'),
(5, 'Bilal', '1997-11-05', '2023-12-01'),
(6, 'Hina', '1999-01-10', '2024-01-10');
GO
-- 1.
SELECT * FROM Employee WHERE [Joining Date] < '2023-01-01';

-- 2.
SELECT * FROM Employee WHERE [Joining Date] > '2023-12-31';

-- 3.
SELECT * FROM Employee WHERE BirthDate < '1997-01-01';

-- 4.
SELECT * FROM Employee WHERE [Joining Date] > '2024-01-01';

-- 5.
SELECT * FROM Employee WHERE [Joining Date] >= '2023-01-01';

-- 6.
SELECT * FROM Employee WHERE [Joining Date] <= '2023-12-31';

-- 7.
SELECT * FROM Employee WHERE [Joining Date] = '2024-01-10';

-- 8.
SELECT * FROM Employee WHERE BirthDate = '1995-05-10';

-- 9.
SELECT * FROM Employee WHERE [Joining Date] = '2022-09-18';

-- 10.
SELECT * FROM Employee WHERE [Joining Date] = '2023-12-01';

-- 11.
SELECT * FROM Employee WHERE [Joining Date] <> '2024-01-10';

-- 12.
SELECT * FROM Employee WHERE BirthDate <> '1995-05-10';

-- 13.
SELECT * FROM Employee WHERE [Joining Date] <> '2023-06-20';

-- 14.
SELECT * FROM Employee WHERE [Joining Date] <> '2022-01-15';

-- 15.
SELECT EmployeeName, [Joining Date] FROM Employee WHERE [Joining Date] < '2024-01-01';

-- 16.
SELECT * FROM Employee WHERE [Joining Date] >= '2023-01-01' AND [Joining Date] < '2025-01-01';

-- 17.
SELECT * FROM Employee WHERE BirthDate < '1998-01-01' AND [Joining Date] > '2022-01-01';

-- 18.
SELECT * FROM Employee WHERE [Joining Date] <> '2024-01-10' AND [Joining Date] < '2025-01-01';

-- 19.
SELECT * FROM Employee WHERE [Joining Date] > '2023-01-01' AND [Joining Date] <> '2024-01-10';

-- 20.
SELECT * FROM Employee WHERE BirthDate <= '1997-12-31';