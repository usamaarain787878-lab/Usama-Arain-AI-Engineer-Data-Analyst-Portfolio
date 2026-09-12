CREATE DATABASE LibraryDB1;

USE LibraryDB1;

CREATE TABLE Borrowing (
    BorrowID INT,
    MemberName VARCHAR(50),
    Branch VARCHAR(30),
    BookTitle VARCHAR(50),
    BookType VARCHAR(30),
    DaysBorrowed INT,
    DailyFine INT,
    Librarian VARCHAR(50)
);

INSERT INTO Borrowing (BorrowID, MemberName, Branch, BookTitle, BookType, DaysBorrowed, DailyFine, Librarian) VALUES
(1, 'Ali', 'Hyderabad', 'CSharp Basics', 'Programming', 5, 100, 'Nadia'),
(2, 'Sara', 'Karachi', 'Database Design', 'Programming', 3, 150, 'Farhan'),
(3, 'Ahmed', 'Hyderabad', 'English Grammar', 'Language', 4, 80, 'Nadia'),
(4, 'Hina', 'Karachi', 'Python Guide', 'Programming', 6, 120, 'Farhan'),
(5, 'Usman', 'Lahore', 'World History', 'History', 2, 100, 'Sana'),
(6, 'Ayesha', 'Hyderabad', 'Web Development', 'Programming', 7, 150, 'Nadia'),
(7, 'Hamza', 'Lahore', 'Computer Networks', 'Technology', 5, 120, 'Sana'),
(8, 'Zainab', 'Karachi', 'Urdu Literature', 'Language', 3, 80, 'Farhan'),
(9, 'Imran', 'Hyderabad', 'Data Structures', 'Programming', 4, 150, 'Nadia'),
(10, 'Tahir', 'Lahore', 'Pakistan History', 'History', 6, 90, 'Sana'),
(11, 'Saad', 'Karachi', 'Operating Systems', 'Technology', 2, 130, 'Farhan'),
(12, 'Maham', 'Hyderabad', 'Java Programming', 'Programming', 5, 120, 'Nadia');

-- 4. Display the total number of days borrowed for each branch
SELECT Branch, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
GROUP BY Branch;

-- 5. Include only records from Hyderabad and Lahore, display total days borrowed for each branch
SELECT Branch, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE Branch IN ('Hyderabad', 'Lahore')
GROUP BY Branch;

-- 6. Total number of days borrowed for each branch arranged in descending order of TotalDays
SELECT Branch, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
GROUP BY Branch
ORDER BY TotalDays DESC;

-- 7. Display each BookType along with the total number of days borrowed
SELECT BookType, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
GROUP BY BookType;

-- 8. Display each Book Title along with its total number of days borrowed, include only records handled by Nadia
SELECT BookTitle, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE Librarian = 'Nadia'
GROUP BY BookTitle;

-- 9. Include only records handled by Nadia and Farhan
SELECT BookTitle, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE Librarian IN ('Nadia', 'Farhan')
GROUP BY BookTitle;

-- 10. Include only records handled by Nadia, Farhan, and Sana
SELECT BookTitle, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE Librarian IN ('Nadia', 'Farhan', 'Sana')
GROUP BY BookTitle;

-- 11. Exclude records handled by Nadia
SELECT BookTitle, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE Librarian != 'Nadia'
GROUP BY BookTitle;

-- 12. Exclude records handled by Farhan and Sana
SELECT BookTitle, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE Librarian NOT IN ('Farhan', 'Sana')
GROUP BY BookTitle;

-- 13. BookType and total days borrowed by Nadia, arranged highest to lowest
SELECT BookType, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE Librarian = 'Nadia'
GROUP BY BookType
ORDER BY TotalDays DESC;

-- 14. BookType and total days borrowed by Farhan, arranged highest to lowest
SELECT BookType, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE Librarian = 'Farhan'
GROUP BY BookType
ORDER BY TotalDays DESC;

-- 15. BookType and total days borrowed by Sana, arranged highest to lowest
SELECT BookType, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE Librarian = 'Sana'
GROUP BY BookType
ORDER BY TotalDays DESC;

-- 16. BookType and total days borrowed by Nadia and Farhan, arranged highest to lowest
SELECT BookType, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE Librarian IN ('Nadia', 'Farhan')
GROUP BY BookType
ORDER BY TotalDays DESC;

-- 17. Librarian and total days borrowed, arranged highest to lowest
SELECT Librarian, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
GROUP BY Librarian
ORDER BY TotalDays DESC;

-- 18. BookTitle and total days borrowed, include only Programming books
SELECT BookTitle, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE BookType = 'Programming'
GROUP BY BookTitle;

-- 19. BookTitle and total days borrowed, include only Language and History books
SELECT BookTitle, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE BookType IN ('Language', 'History')
GROUP BY BookTitle;

-- 20. BookType and total days borrowed in Karachi
SELECT BookType, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE Branch = 'Karachi'
GROUP BY BookType;

-- 21. BookType and total days borrowed in Hyderabad
SELECT BookType, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE Branch = 'Hyderabad'
GROUP BY BookType;

-- 22. Librarian and total days borrowed
SELECT Librarian, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
GROUP BY Librarian;

-- 23. Librarian and total days borrowed, arranged in ascending order of Librarian
SELECT Librarian, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
GROUP BY Librarian
ORDER BY Librarian ASC;

-- 24. Librarian and total days borrowed, arranged from highest to lowest total days
SELECT Librarian, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
GROUP BY Librarian
ORDER BY TotalDays DESC;

-- 25. Librarian and total days borrowed, consider only Programming books
SELECT Librarian, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE BookType = 'Programming'
GROUP BY Librarian;

-- 26. Librarian-wise total number of days borrowed for Programming books, arranged highest to lowest
SELECT Librarian, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
WHERE BookType = 'Programming'
GROUP BY Librarian
ORDER BY TotalDays DESC;

-- 27. Branch along with total fine amount (DaysBorrowed * DailyFine)
SELECT Branch, SUM(DaysBorrowed * DailyFine) AS TotalFine
FROM Borrowing
GROUP BY Branch;

-- 28. Librarian along with total fine amount, arranged highest to lowest
SELECT Librarian, SUM(DaysBorrowed * DailyFine) AS TotalFine
FROM Borrowing
GROUP BY Librarian
ORDER BY TotalFine DESC;

-- 29. Branch along with total fine amount for Programming books
SELECT Branch, SUM(DaysBorrowed * DailyFine) AS TotalFine
FROM Borrowing
WHERE BookType = 'Programming'
GROUP BY Branch;

-- 30. Branch along with total fine amount for Programming books, arranged in ascending order of Branch
SELECT Branch, SUM(DaysBorrowed * DailyFine) AS TotalFine
FROM Borrowing
WHERE BookType = 'Programming'
GROUP BY Branch
ORDER BY Branch ASC;

-- 31. Branch along with total fine amount for Programming books, arranged highest to lowest
SELECT Branch, SUM(DaysBorrowed * DailyFine) AS TotalFine
FROM Borrowing
WHERE BookType = 'Programming'
GROUP BY Branch
ORDER BY TotalFine DESC;

-- 32. Librarian along with total fine amount, arranged in ascending order of Librarian
SELECT Librarian, SUM(DaysBorrowed * DailyFine) AS TotalFine
FROM Borrowing
GROUP BY Librarian
ORDER BY Librarian ASC;

-- 33. Librarian along with total fine amount, arranged highest to lowest
SELECT Librarian, SUM(DaysBorrowed * DailyFine) AS TotalFine
FROM Borrowing
GROUP BY Librarian
ORDER BY TotalFine DESC;

-- 34. BookType along with its total fine amount
SELECT BookType, SUM(DaysBorrowed * DailyFine) AS TotalFine
FROM Borrowing
GROUP BY BookType;

-- 35. BookType along with its total fine amount, include only records from Karachi
SELECT BookType, SUM(DaysBorrowed * DailyFine) AS TotalFine
FROM Borrowing
WHERE Branch = 'Karachi'
GROUP BY BookType;

-- 36. BookType along with total fine amount in Karachi, arranged highest to lowest
SELECT BookType, SUM(DaysBorrowed * DailyFine) AS TotalFine
FROM Borrowing
WHERE Branch = 'Karachi'
GROUP BY BookType
ORDER BY TotalFine DESC;

-- 37. Branch and total days borrowed, include only branches where total days > 15
SELECT Branch, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
GROUP BY Branch
HAVING SUM(DaysBorrowed) > 15;

-- 38. BookType and total days borrowed, include only BookTypes whose total days > 10
SELECT BookType, SUM(DaysBorrowed) AS TotalDays
FROM Borrowing
GROUP BY BookType
HAVING SUM(DaysBorrowed) > 10;

-- 39. Librarian and total fine amount, include only librarians whose total fine amount > 2000
SELECT Librarian, SUM(DaysBorrowed * DailyFine) AS TotalFine
FROM Borrowing
GROUP BY Librarian
HAVING SUM(DaysBorrowed * DailyFine) > 2000;

-- 40. Branch along with total fine amount for Programming and Technology books, arranged highest to lowest
SELECT Branch, SUM(DaysBorrowed * DailyFine) AS TotalFine
FROM Borrowing
WHERE BookType IN ('Programming', 'Technology')
GROUP BY Branch
ORDER BY TotalFine DESC;