-- ==========================================
-- 1 & 2. Database & Table Creation
-- ==========================================
CREATE DATABASE LibraryDB0;
GO

USE LibraryDB0;
GO

CREATE TABLE BookIssues (
    IssueID INT PRIMARY KEY,
    BookTitle VARCHAR(100),
    MemberName VARCHAR(50),
    IssueDate DATE,
    ReturnDate DATE,
    PublishedDate DATE
);
GO

-- ==========================================
-- 3. Insert 10 Records
-- ==========================================
INSERT INTO BookIssues (IssueID, BookTitle, MemberName, IssueDate, ReturnDate, PublishedDate) VALUES
(1, 'Python Basics', 'Ali', '2026-01-05', '2026-01-12', '2022-03-15'),
(2, 'SQL Server Guide', 'Ahmed', '2026-02-10', '2026-02-18', '2021-06-20'),
(3, 'C# Programming', 'Sara', '2026-03-15', '2026-03-22', '2023-01-10'),
(4, 'Web Development', 'Ayesha', '2026-04-08', '2026-04-16', '2020-09-25'),
(5, 'Database Design', 'Hamza', '2026-05-20', '2026-05-28', '2019-11-12'),
(6, 'Computer Networks', 'Talha', '2026-06-12', '2026-06-19', '2022-07-05'),
(7, 'Artificial Intelligence', 'Hassan', '2026-07-03', '2026-07-11', '2024-02-18'),
(8, 'Data Structures', 'Zainab', '2026-08-15', '2026-08-23', '2021-10-30'),
(9, 'Java Programming', 'Usman', '2026-09-02', '2026-09-10', '2023-05-14'),
(10, 'Computer Fundamentals', 'Maryam', '2026-10-18', '2026-10-25', '2018-12-22');
GO

-- ==========================================
-- 4. Book Title and Issue Year
-- ==========================================
SELECT BookTitle, YEAR(IssueDate) AS IssueYear FROM BookIssues;

-- ==========================================
-- 5. Book Title and Issue Month Number
-- ==========================================
SELECT BookTitle, MONTH(IssueDate) AS IssueMonth FROM BookIssues;

-- ==========================================
-- 6. Book Title and Issue Day Number
-- ==========================================
SELECT BookTitle, DAY(IssueDate) AS IssueDay FROM BookIssues;

-- ==========================================
-- 7. Book Title and Return Year
-- ==========================================
SELECT BookTitle, YEAR(ReturnDate) AS ReturnYear FROM BookIssues;

-- ==========================================
-- 8. Book Title and Return Month Number
-- ==========================================
SELECT BookTitle, MONTH(ReturnDate) AS ReturnMonth FROM BookIssues;

-- ==========================================
-- 9. Book Title and Return Day Number
-- ==========================================
SELECT BookTitle, DAY(ReturnDate) AS ReturnDay FROM BookIssues;

-- ==========================================
-- 10. Book Title and Publication Year
-- ==========================================
SELECT BookTitle, YEAR(PublishedDate) AS PublishedYear FROM BookIssues;

-- ==========================================
-- 11. Book Title and Publication Month
-- ==========================================
SELECT BookTitle, MONTH(PublishedDate) AS PublishedMonth FROM BookIssues;

-- ==========================================
-- 12. Book Title and Publication Day
-- ==========================================
SELECT BookTitle, DAY(PublishedDate) AS PublishedDay FROM BookIssues;

-- ==========================================
-- 13. Book Title, Issue Date, and Quarter Number
-- ==========================================
SELECT BookTitle, IssueDate, DATEPART(QUARTER, IssueDate) AS IssueQuarter FROM BookIssues;

-- ==========================================
-- 14. Book Title, Issue Date, and Week Number
-- ==========================================
SELECT BookTitle, IssueDate, DATEPART(WEEK, IssueDate) AS IssueWeek FROM BookIssues;

-- ==========================================
-- 15. Book Title, Issue Date, and Weekday Number
-- ==========================================
SELECT BookTitle, IssueDate, DATEPART(WEEKDAY, IssueDate) AS IssueWeekday FROM BookIssues;

-- ==========================================
-- 16. Book Title, Issue Date, Year, Month, and Day
-- ==========================================
SELECT 
    BookTitle, 
    IssueDate, 
    YEAR(IssueDate) AS IssueYear, 
    MONTH(IssueDate) AS IssueMonth, 
    DAY(IssueDate) AS IssueDay 
FROM BookIssues;

-- ==========================================
-- 17. Book Title, Return Date, Year, Month, and Day
-- ==========================================
SELECT 
    BookTitle, 
    ReturnDate, 
    YEAR(ReturnDate) AS ReturnYear, 
    MONTH(ReturnDate) AS ReturnMonth, 
    DAY(ReturnDate) AS ReturnDay 
FROM BookIssues;

-- ==========================================
-- 18. Book Title, Published Date, Year, Month, and Day
-- ==========================================
SELECT 
    BookTitle, 
    PublishedDate, 
    YEAR(PublishedDate) AS PublishedYear, 
    MONTH(PublishedDate) AS PublishedMonth, 
    DAY(PublishedDate) AS PublishedDay 
FROM BookIssues;

-- ==========================================
-- 19. Book Title, Issue Date, Quarter, and Week
-- ==========================================
SELECT 
    BookTitle, 
    IssueDate, 
    DATEPART(QUARTER, IssueDate) AS IssueQuarter, 
    DATEPART(WEEK, IssueDate) AS IssueWeek 
FROM BookIssues;

-- ==========================================
-- 20. Book Title, Issue Date, Issue Month, Return Date, and Return Month
-- ==========================================
SELECT 
    BookTitle, 
    IssueDate, 
    MONTH(IssueDate) AS IssueMonth, 
    ReturnDate, 
    MONTH(ReturnDate) AS ReturnMonth 
FROM BookIssues;

-- ==========================================
-- 21. Book Title, Issue Year, Return Year, and Published Year
-- ==========================================
SELECT 
    BookTitle, 
    YEAR(IssueDate) AS IssueYear, 
    YEAR(ReturnDate) AS ReturnYear, 
    YEAR(PublishedDate) AS PublishedYear 
FROM BookIssues;

-- ==========================================
-- 22. Comprehensive Issue Details
-- ==========================================
SELECT 
    BookTitle, 
    MemberName, 
    IssueDate, 
    YEAR(IssueDate) AS IssueYear, 
    MONTH(IssueDate) AS IssueMonth, 
    DAY(IssueDate) AS IssueDay, 
    DATEPART(QUARTER, IssueDate) AS IssueQuarter, 
    DATEPART(WEEK, IssueDate) AS IssueWeek 
FROM BookIssues;

-- ==========================================
-- 23. Comprehensive Master Details
-- ==========================================
SELECT 
    BookTitle, 
    MemberName, 
    PublishedDate, 
    IssueDate, 
    ReturnDate, 
    YEAR(PublishedDate) AS PublishedYear, 
    MONTH(PublishedDate) AS PublishedMonth, 
    YEAR(IssueDate) AS IssueYear, 
    MONTH(IssueDate) AS IssueMonth, 
    YEAR(ReturnDate) AS ReturnYear, 
    MONTH(ReturnDate) AS ReturnMonth 
FROM BookIssues;