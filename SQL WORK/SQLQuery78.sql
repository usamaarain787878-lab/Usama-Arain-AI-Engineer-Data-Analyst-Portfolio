-- ==========================================================
-- SQL Practice Tasks Solution Script
-- Database: DatePracticeDB
-- ==========================================================

-- 1. Write a SQL statement to create a database named DatePracticeDB.
CREATE DATABASE DatePracticeDB;

-- 2. Write a SQL statement to select the Date PracticeDB database.
USE DatePracticeDB;

-- 3. Write a SQL statement to create a table named Student with the specified columns.
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DateOfBirth DATE,
    AdmissionDate DATE
);

-- 4. Write a SQL statement to insert a student named Ali.
INSERT INTO Student (StudentID, StudentName, DateOfBirth, AdmissionDate)
VALUES (1, 'Ali', '2005-03-15', '2026-09-01');

-- 5. Write a SQL statement to insert the records into the Student table.
INSERT INTO Student (StudentID, StudentName, DateOfBirth, AdmissionDate) VALUES
(1, 'Ali', '2005-03-15', '2026-09-01'),
(2, 'Sara', '2004-07-20', '2026-08-15'),
(3, 'Ahmed', '2006-01-10', '2026-09-02'),
(4, 'Hina', '2005-11-25', '2026-07-10'),
(5, 'Usman', '2004-05-18', '2026-08-20');

-- 6. Write a SQL statement to display all records from the Student table.
SELECT * FROM Student;

-- 7. Write a SQL statement to display only the StudentName and DateOfBirth columns.
SELECT StudentName, DateOfBirth FROM Student;

-- 8. Write a SQL statement to find students whose date of birth is 2005-03-15.
SELECT * FROM Student 
WHERE DateOfBirth = '2005-03-15';

-- 9. Write a SQL statement to find students who were admitted after 2026-08-01.
SELECT * FROM Student 
WHERE AdmissionDate > '2026-08-01';

-- 10. Write a SQL statement to find students who were admitted before 2026-09-01.
SELECT * FROM Student 
WHERE AdmissionDate < '2026-09-01';

-- 11. Write a SQL statement to update Ali's admission date to 2026-09-05.
UPDATE Student 
SET AdmissionDate = '2026-09-05' 
WHERE StudentName = 'Ali';

-- 12. Write a SQL statement to delete the student whose date of birth is 2006-01-10.
DELETE FROM Student 
WHERE DateOfBirth = '2006-01-10';