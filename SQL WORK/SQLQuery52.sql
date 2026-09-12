CREATE DATABASE LibraryDB;

USE LibraryDB;

CREATE TABLE Book (
    ID INT,
    Title VARCHAR(100),
    Category VARCHAR(50),
    Price INT
);

INSERT INTO Book (ID, Title, Category, Price) VALUES
(1, 'C# Programming', 'Programming', 2500),
(2, 'SQL Server Basics', 'Database', 1800),
(3, 'Python Fundamentals', 'Programming', 2200),
(4, 'HTML and CSS', 'Web Development', 1500),
(5, 'JavaScript Guide', 'Web Development', 2000),
(6, 'Database Design', 'Database', 3000),
(7, 'Data Structures', 'Programming', 2800),
(8, 'Web Development', 'Web Development', 3500),
(9, 'Computer Networks', 'Networking', 2400),
(10, 'Operating Systems', 'Computer Science', 2700),
(11, 'Machine Learning', 'Artificial Intelligence', 4000),
(12, 'Artificial Intelligence', 'Artificial Intelligence', 4500);

SELECT * FROM Book WHERE Category = 'Programming' AND Price > 2500;

SELECT * FROM Book WHERE Category = 'Database' AND Price < 2500;

SELECT * FROM Book WHERE Price > 2000 AND Price < 4000;

SELECT Title, Price FROM Book WHERE Category = 'Web Development' AND Price > 1800;

SELECT * FROM Book WHERE Category = 'Programming' OR Category = 'Database';

SELECT * FROM Book WHERE Price < 1800 OR Price > 4000;

SELECT * FROM Book WHERE Title = 'C# Programming' OR Title = 'Python Fundamentals';

SELECT * FROM Book WHERE Category = 'Networking' OR Category = 'Computer Science';

SELECT * FROM Book WHERE Category IN ('Programming', 'Database', 'Web Development');

SELECT * FROM Book WHERE ID IN (1, 3, 6, 8);

SELECT * FROM Book WHERE Price IN (1500, 2000, 2500, 3000);

SELECT * FROM Book WHERE (Category = 'Programming' OR Category = 'Artificial Intelligence') AND Price > 2500;

SELECT * FROM Book WHERE Price >= 3000;

SELECT * FROM Book WHERE Price <= 2000;

SELECT * FROM Book WHERE Price > 1800 AND Price <= 3000;

SELECT * FROM Book WHERE ID > 5 AND Price < 3500;

SELECT * FROM Book WHERE Category <> 'Programming';

SELECT * FROM Book WHERE Price <> 2500;

SELECT * FROM Book WHERE Category <> 'Database' AND Price > 2000;

SELECT * FROM Book WHERE Price <> 3000 OR Category = 'Artificial Intelligence';

UPDATE Book SET Price = Price + 500 WHERE Category = 'Programming' AND Price < 3000;

UPDATE Book SET Price = Price + 300 WHERE Category = 'Web Development' OR Category = 'Database';

UPDATE Book SET Price = 2500 WHERE Title = 'SQL Server Basics' AND Category = 'Database';

UPDATE Book SET Price = 3000 WHERE ID IN (2, 4, 5);

UPDATE Book SET Category = 'Programming' WHERE Title = 'Data Structures' AND Price = 2800;

DELETE FROM Book WHERE Category = 'Web Development' AND Price < 2000;

DELETE FROM Book WHERE Category = 'Artificial Intelligence' OR Price > 4000;

DELETE FROM Book WHERE Price < 1800 OR Price > 4000;

DELETE FROM Book WHERE ID IN (4, 7, 10);

DELETE FROM Book WHERE Category <> 'Programming' AND Price < 2500;

SELECT * FROM Book WHERE (Category = 'Programming' OR Category = 'Database') AND Price > 2000 AND Price <> 2500;

SELECT * FROM Book WHERE (Category = 'Web Development' OR Category = 'Networking') AND Price BETWEEN 1500 AND 3000;

SELECT * FROM Book WHERE ID IN (1, 3, 5, 7, 9) AND Category <> 'Web Development';

UPDATE Book SET Price = Price + 500 WHERE (Category = 'Programming' OR Category = 'Database') AND Price < 3000 AND ID <> 2;

DELETE FROM Book WHERE Category = 'Artificial Intelligence' OR Price < 1800;

SELECT * FROM Book WHERE (Category = 'Programming' OR Category = 'Database' OR Category = 'Artificial Intelligence') AND Price >= 2500;