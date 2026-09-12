-- 1. Table Agar Pehle Se Majood Hai Toh Drop Karein (Old SQL Server Syntax)
IF OBJECT_ID('BookIssue', 'U') IS NOT NULL
    DROP TABLE BookIssue;
GO

-- 2. Naya Table Banayein
CREATE TABLE BookIssue
(
    IssueID INT,
    MemberName VARCHAR(50),
    BookName VARCHAR(100),
    IssueDate DATE,
    ReturnDate DATE
);
GO

-- 3. Data Insert Karein
INSERT INTO BookIssue VALUES
(1, 'Ali', 'Introduction to C#', '2026-08-01', '2026-08-07'),
(2, 'Ahmed', 'SQL Server Basics', '2026-08-05', '2026-08-12'),
(3, 'Sara', 'Python Programming', '2026-08-10', '2026-08-17'),
(4, 'Hina', 'Web Development', '2026-08-15', '2026-08-22'),
(5, 'Usman', 'Database Design', '2026-08-20', '2026-08-27'),
(6, 'Ayesha', 'C++ Programming', '2026-08-25', '2026-09-01'),
(7, 'Bilal', 'Java Programming', '2026-08-28', '2026-09-04'),
(8, 'Talha', 'HTML and CSS', '2026-09-01', '2026-09-08');
GO

-- 4. Tasks Run Karein
SELECT * FROM BookIssue WHERE IssueDate = '2026-08-10';
SELECT * FROM BookIssue WHERE IssueDate <> '2026-08-10';
SELECT * FROM BookIssue WHERE IssueDate < '2026-08-20';
SELECT * FROM BookIssue WHERE IssueDate > '2026-08-20';
SELECT * FROM BookIssue WHERE IssueDate >= '2026-08-20';