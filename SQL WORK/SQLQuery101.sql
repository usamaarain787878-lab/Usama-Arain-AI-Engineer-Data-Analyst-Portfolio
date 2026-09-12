-- 1. Create a database named SchoolDB
CREATE DATABASE SchoolDB000;
USE SchoolDB000;

-- 2. Create a table named Exams
CREATE TABLE Exams (
    ExamID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Subject VARCHAR(50),
    ExamDate DATE
);

-- 3. Insert Records into Exams table
INSERT INTO Exams (ExamID, StudentName, Subject, ExamDate) VALUES
(1, 'Ali', 'Mathematics', '2026-01-15'),
(2, 'Ahmed', 'English', '2026-02-20'),
(3, 'Sara', 'Science', '2026-03-12'),
(4, 'Ayesha', 'Computer', '2026-04-25'),
(5, 'Hamza', 'Mathematics', '2026-05-18'),
(6, 'Fatima', 'English', '2026-06-10'),
(7, 'Hassan', 'Science', '2026-07-22'),
(8, 'Zainab', 'Computer', '2026-08-14'),
(9, 'Usman', 'Mathematics', '2026-09-05'),
(10, 'Maryam', 'Science', '2026-10-28');

-- 4. Display exams scheduled in January
SELECT * FROM Exams 
WHERE MONTH(ExamDate) = 1;

-- 5. Display exams scheduled in the second quarter
SELECT * FROM Exams 
WHERE DATEPART(QUARTER, ExamDate) = 2;

-- 6. Display exams scheduled in September
SELECT * FROM Exams 
WHERE MONTH(ExamDate) = 9;

-- 7. Display exams scheduled on a day greater than 20
SELECT * FROM Exams 
WHERE DAY(ExamDate) > 20;

-- 8. Display exams scheduled in the year 2026
SELECT * FROM Exams 
WHERE YEAR(ExamDate) = 2026;

-- 9. Display exams scheduled in March
SELECT * FROM Exams 
WHERE MONTH(ExamDate) = 3;

-- 10. Display exams scheduled in the first quarter
SELECT * FROM Exams 
WHERE DATEPART(QUARTER, ExamDate) = 1;

-- 11. Display exams scheduled in July
SELECT * FROM Exams 
WHERE MONTH(ExamDate) = 7;

-- 12. Display exams scheduled on a day from 1 to 10
SELECT * FROM Exams 
WHERE DAY(ExamDate) BETWEEN 1 AND 10;