-- ==========================================
-- 1. Create Table Book
-- ==========================================
CREATE TABLE Book (
    BookID INT,
    Title VARCHAR(100),
    Category VARCHAR(50),
    Author VARCHAR(50),
    Price INT,
    Pages INT
);

-- ==========================================
-- 2. Insert Records into Book Table
-- ==========================================
INSERT INTO Book (BookID, Title, Category, Author, Price, Pages) VALUES
(1, 'SQL Basics', 'Programming', 'Ahmed', 2500, 300),
(2, 'Python Guide', 'Programming', 'Ali', 3500, 450),
(3, 'Web Design', 'Web', 'Bilal', 2000, 280),
(4, 'C Sharp', 'Programming', 'Ahmed', 4000, 500),
(5, 'HTML CSS', 'Web', 'Sana', 1800, 220),
(6, 'Database Design', 'Database', 'Hina', 3000, 350),
(7, 'SQL Advanced', 'Database', 'Ali', 4500, 550),
(8, 'JavaScript', 'Web', 'Bilal', 3200, 400);

-- ==========================================
-- 3. Display books belonging to the 'Programming' category
-- ==========================================
SELECT BookID, Title, Category, Author, Price, Pages 
FROM Book 
WHERE Category = 'Programming' 
ORDER BY Price DESC, Title ASC;

-- ==========================================
-- 4. Display books whose price is greater than 2500
-- ==========================================
SELECT BookID, Title, Price, Pages 
FROM Book 
WHERE Price > 2500 
ORDER BY Price ASC, Pages DESC;

-- ==========================================
-- 5. Display books written by Ahmed or Ali
-- ==========================================
SELECT BookID, Title, Author, Price 
FROM Book 
WHERE Author IN ('Ahmed', 'Ali') 
ORDER BY Author ASC, Price DESC;

-- ==========================================
-- 6. Display books that have 400 or more pages
-- ==========================================
SELECT BookID, Title, Pages, Price 
FROM Book 
WHERE Pages >= 400 
ORDER BY Pages DESC, Price ASC;

-- ==========================================
-- 7. Display books that do not belong to the 'Web' category
-- ==========================================
SELECT BookID, Title, Category, Price 
FROM Book 
WHERE Category <> 'Web' 
ORDER BY Category ASC, Price DESC;

-- ==========================================
-- 8. Display books whose price is less than 3500
-- ==========================================
SELECT BookID, Title, Category, Author, Price, Pages 
FROM Book 
WHERE Price < 3500 
ORDER BY Category ASC, Price DESC;

-- ==========================================
-- 9. Display books written by Ahmed or Bilal
-- ==========================================
SELECT BookID, Title, Author, Pages 
FROM Book 
WHERE Author IN ('Ahmed', 'Bilal') 
ORDER BY Author ASC, Pages DESC;

-- ==========================================
-- 10. Display books that belong to either 'Programming' or 'Database' category
-- ==========================================
SELECT BookID, Title, Category, Price 
FROM Book 
WHERE Category IN ('Programming', 'Database') 
ORDER BY Category ASC, Price DESC;

-- ==========================================
-- 11. Display books with more than 300 pages and price less than 4500
-- ==========================================
SELECT BookID, Title, Pages, Price 
FROM Book 
WHERE Pages > 300 AND Price < 4500 
ORDER BY Pages DESC, Price ASC;

-- ==========================================
-- 12. Display books whose author is not Bilal and price >= 3000
-- ==========================================
SELECT BookID, Title, Author, Price 
FROM Book 
WHERE Author <> 'Bilal' AND Price >= 3000 
ORDER BY Price DESC, Title ASC;