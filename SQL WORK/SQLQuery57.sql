CREATE DATABASE LibraryDB3;

USE LibraryDB3;

CREATE TABLE Book (
    BookID int,
    [Book Title] varchar(20),
    AuthorName varchar(20),
    Category varchar(20),
    Publisher varchar(20)
);

INSERT INTO Book (BookID, [Book Title], AuthorName, Category, Publisher) VALUES
(1, 'Database', 'Ahmed Ali', 'Technology', 'TechBooks'),
(2, 'Databases', 'Salman Khan', 'Education', 'LearnPress'),
(3, 'Python', 'Hassan Raza', 'Programming', 'CodeWorld'),
(4, 'Java', 'Kamran Ali', 'Programming', 'TechBooks'),
(5, 'Networking', 'Asad Malik', 'Technology', 'NetBooks'),
(6, 'Algorithms', 'Bilal Ahmed', 'Programming', 'CodeWorld'),
(7, 'History', 'Nadia Khan', 'History', 'LearnPress'),
(8, 'Biology', 'Sana Ahmed', 'Science', 'EduBooks'),
(9, 'Chemistry', 'Ayesha Malik', 'Science', 'EduBooks'),
(10, 'English', 'Maria Ali', 'Language', 'Book House'),
(11, 'Physics', 'Hamza Raza', 'Science', 'EduBooks'),
(12, 'Computer', 'Noman Khan', 'Technology', 'TechBooks'),
(13, 'Marketing', 'Farhan Ali', 'Business', 'BookHouse'),
(14, 'Management', 'Saad Ahmed', 'Business', 'LearnPress'),
(15, 'Psychology', 'Hina Malik', 'Science', 'EduBooks');

SELECT * FROM Book WHERE [Book Title] LIKE 'Data%';

SELECT * FROM Book WHERE [Book Title] LIKE '%ing';

SELECT * FROM Book WHERE [Book Title] LIKE '%book%';

SELECT * FROM Book WHERE [Book Title] LIKE 'P%';

SELECT * FROM Book WHERE [Book Title] LIKE '%y';

SELECT * FROM Book WHERE AuthorName LIKE 'Ahmed%';

SELECT * FROM Book WHERE AuthorName LIKE '%Ali';

SELECT * FROM Book WHERE AuthorName LIKE '%Khan%';

SELECT * FROM Book WHERE Category LIKE 'Tech%';

SELECT * FROM Book WHERE Publisher LIKE '%Press';

SELECT * FROM Book WHERE [Book Title] LIKE '____';

SELECT * FROM Book WHERE [Book Title] LIKE '_____';

SELECT * FROM Book WHERE [Book Title] LIKE 'J___';

SELECT * FROM Book WHERE [Book Title] LIKE 'P_____';

SELECT * FROM Book WHERE [Book Title] LIKE '_a%';

SELECT * FROM Book WHERE [Book Title] LIKE '__i%';

SELECT * FROM Book WHERE AuthorName LIKE 'S____';

SELECT * FROM Book WHERE Category LIKE 'S_____';

SELECT * FROM Book WHERE [Book Title] LIKE 'P_%';

SELECT * FROM Book WHERE [Book Title] LIKE 'M%g';

SELECT * FROM Book WHERE [Book Title] LIKE '_a%g';

SELECT * FROM Book WHERE AuthorName LIKE 'H_%';

SELECT * FROM Book WHERE AuthorName LIKE 'A%i';

SELECT * FROM Book WHERE Category LIKE 'P%';

UPDATE Book SET Publisher = 'TechBooks' WHERE [Book Title] LIKE 'C%';

UPDATE Book SET Category = 'Technology' WHERE [Book Title] LIKE '%Computer%';

UPDATE Book SET Publisher = 'BookHouse' WHERE AuthorName LIKE '%Ali';

UPDATE Book SET Category = 'Science' WHERE [Book Title] LIKE '%y';

UPDATE Book SET Publisher = 'LearnPress' WHERE AuthorName LIKE '%Khan%';

UPDATE Book SET Category = 'Programming' WHERE [Book Title] LIKE 'P%';

DELETE FROM Book WHERE [Book Title] LIKE 'Java%';

DELETE FROM Book WHERE [Book Title] LIKE '%y';

DELETE FROM Book WHERE AuthorName LIKE 'H%';

DELETE FROM Book WHERE AuthorName LIKE '%Malik%';

DELETE FROM Book WHERE Category LIKE 'Business%';

DELETE FROM Book WHERE Publisher LIKE '%Press';

DELETE FROM Book WHERE [Book Title] LIKE '____';

DELETE FROM Book WHERE [Book Title] LIKE 'P%n';

DELETE FROM Book WHERE AuthorName LIKE 'A%i';

DELETE FROM Book WHERE [Book Title] LIKE '_a%';