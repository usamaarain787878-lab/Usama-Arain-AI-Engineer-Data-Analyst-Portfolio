-- ==========================================
-- PART 1: Database Setup & Data Insertion
-- ==========================================

-- 1. Create a database named SchoolDB
CREATE DATABASE SchoolDB12;

-- 2. Select the SchoolDB database
USE SchoolDB12;

-- 3. Create a table named Student
CREATE TABLE Student (
    StudentID INT,
    [Student Name] VARCHAR(50),
    Class VARCHAR(20),
    Section VARCHAR(10),
    Marks INT
);

-- 4. Insert records into the Student table
INSERT INTO Student (StudentID, [Student Name], Class, Section, Marks) VALUES
(1, 'Ali', '10th', 'A', 78),
(2, 'Ahmed', '10th', 'B', 85),
(3, 'Bilal', '9th', 'A', 65),
(4, 'Danish', '10th', 'A', 92),
(5, 'Hamza', '9th', 'B', 74),
(6, 'Usman', '9th', 'A', 81),
(7, 'Hassan', '10th', 'B', 69),
(8, 'Fahad', '9th', 'B', 88),
(9, 'Salman', '10th', 'A', 73),
(10, 'Saad', '9th', 'A', 95);


-- ==========================================
-- PART 2: SQL Queries
-- ==========================================

-- 1. Display the number of students in each class
SELECT Class, COUNT(*) AS Student_Count
FROM Student
GROUP BY Class;

-- 2. Display each class and the total marks of its students
SELECT Class, SUM(Marks) AS Total_Marks
FROM Student
GROUP BY Class;

-- 3. Display each class and the average marks
SELECT Class, AVG(Marks) AS Average_Marks
FROM Student
GROUP BY Class;

-- 4. Display each class and the highest marks
SELECT Class, MAX(Marks) AS Highest_Marks
FROM Student
GROUP BY Class;

-- 5. Display each class and the lowest marks
SELECT Class, MIN(Marks) AS Lowest_Marks
FROM Student
GROUP BY Class;

-- 6. Display the number of students in each section
SELECT Section, COUNT(*) AS Student_Count
FROM Student
GROUP BY Section;

-- 7. Display each section and the total marks
SELECT Section, SUM(Marks) AS Total_Marks
FROM Student
GROUP BY Section;

-- 8. Display each section and the average marks
SELECT Section, AVG(Marks) AS Average_Marks
FROM Student
GROUP BY Section;

-- 9. Display each section and the highest marks
SELECT Section, MAX(Marks) AS Highest_Marks
FROM Student
GROUP BY Section;

-- 10. Display each section and the lowest marks
SELECT Section, MIN(Marks) AS Lowest_Marks
FROM Student
GROUP BY Section;

-- 11. Group the students by both Class and Section and display the total marks for each group
SELECT Class, Section, SUM(Marks) AS Total_Marks
FROM Student
GROUP BY Class, Section;

-- 12. Group the students by Class and display Class, Student Count, Total Marks, Average Marks
SELECT Class, 
       COUNT(*) AS [Student Count], 
       SUM(Marks) AS [Total Marks], 
       AVG(Marks) AS [Average Marks]
FROM Student
GROUP BY Class;

-- 14. Group the students by Section and display Section, Student Count, Highest Marks, Lowest Marks
SELECT Section, 
       COUNT(*) AS [Student Count], 
       MAX(Marks) AS [Highest Marks], 
       MIN(Marks) AS [Lowest Marks]
FROM Student
GROUP BY Section;

-- 15. Group the students by Marks and display each marks value and the number of students who obtained those marks
SELECT Marks, COUNT(*) AS Student_Count
FROM Student
GROUP BY Marks;