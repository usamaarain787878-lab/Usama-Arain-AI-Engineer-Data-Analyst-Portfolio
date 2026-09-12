CREATE DATABASE SchoolDB07;
USE SchoolDB07;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    AdmissionDate DATE,
    DateOfBirth DATE
);

INSERT INTO Students (StudentID, StudentName, AdmissionDate, DateOfBirth) VALUES
(1, 'Ali', '2025-01-15', '2005-06-12'),
(2, 'Ahmed', '2025-02-20', '2004-11-25'),
(3, 'Sara', '2025-03-10', '2006-02-18'),
(4, 'Ayesha', '2025-04-05', '2005-09-30'),
(5, 'Hassan', '2025-05-25', '2004-12-15');

-- 1. Write a SQL statement to display the year from the AdmissionDate column.
SELECT YEAR(AdmissionDate) FROM Students;

-- 2. Write a SQL statement to display the student name and admission year for all students.
SELECT StudentName, YEAR(AdmissionDate) FROM Students;

-- 3. Write a SQL statement to display the year of birth of each student.
SELECT YEAR(DateOfBirth) FROM Students;

-- 4. Write a SQL statement to display StudentName, AdmissionDate, and the year of admission.
SELECT StudentName, AdmissionDate, YEAR(AdmissionDate) FROM Students;

-- 5. Write a SQL statement to display all students who were admitted in 2025 using the YEAR() function.
SELECT * FROM Students WHERE YEAR(AdmissionDate) = 2025;

-- 6. Write a SQL statement to display the month number from the AdmissionDate.
SELECT MONTH(AdmissionDate) FROM Students;

-- 7. Write a SQL statement to display the student name and admission month.
SELECT StudentName, MONTH(AdmissionDate) FROM Students;

-- 8. Write a SQL statement to display the month number of birth for each student.
SELECT MONTH(DateOfBirth) FROM Students;

-- 9. Write a SQL statement to display students whose admission month is March.
SELECT * FROM Students WHERE MONTH(AdmissionDate) = 3;

-- 10. Write a SQL statement to display StudentName, DateOfBirth, and the birth month.
SELECT StudentName, DateOfBirth, MONTH(DateOfBirth) FROM Students;

-- 11. Write a SQL statement to display the day from the AdmissionDate.
SELECT DAY(AdmissionDate) FROM Students;

-- 12. Write a SQL statement to display the student name and admission day.
SELECT StudentName, DAY(AdmissionDate) FROM Students;

-- 13. Write a SQL statement to display the day of birth for each student.
SELECT DAY(DateOfBirth) FROM Students;

-- 14. Write a SQL statement to display students whose admission day is 25.
SELECT * FROM Students WHERE DAY(AdmissionDate) = 25;

-- 15. Write a SQL statement to display StudentName, AdmissionDate, and the day of admission.
SELECT StudentName, AdmissionDate, DAY(AdmissionDate) FROM Students;

-- 16. Write a SQL statement to display StudentName, AdmissionDate, Year, Month, and Day separately.
SELECT StudentName, AdmissionDate, YEAR(AdmissionDate), MONTH(AdmissionDate), DAY(AdmissionDate) FROM Students;

-- 17. Write a SQL statement to display the year, month, and day from DateOfBirth.
SELECT YEAR(DateOfBirth), MONTH(DateOfBirth), DAY(DateOfBirth) FROM Students;

-- 18. Write a SQL statement to display students whose birth year is 2005.
SELECT * FROM Students WHERE YEAR(DateOfBirth) = 2005;

-- 19. Write a SQL statement to display students whose birth month is September.
SELECT * FROM Students WHERE MONTH(DateOfBirth) = 9;

-- 20. Write a SQL statement to display students whose admission date has day 5.
SELECT * FROM Students WHERE DAY(AdmissionDate) = 5;

-- 21. Write a SQL statement to display the following columns: StudentName | AdmissionYear | AdmissionMonth | AdmissionDay
SELECT StudentName, YEAR(AdmissionDate) AS AdmissionYear, MONTH(AdmissionDate) AS AdmissionMonth, DAY(AdmissionDate) AS AdmissionDay FROM Students;

-- 22. Write a SQL statement to display the following columns: StudentName | BirthYear | BirthMonth | BirthDay
SELECT StudentName, YEAR(DateOfBirth) AS BirthYear, MONTH(DateOfBirth) AS BirthMonth, DAY(DateOfBirth) AS BirthDay FROM Students;

-- 23. Write a SQL statement to display students who were born in 2004 and show their StudentName and DateOfBirth.
SELECT StudentName, DateOfBirth FROM Students WHERE YEAR(DateOfBirth) = 2004;

-- 24. Write a SQL statement to display students who were admitted in February and show their StudentName and AdmissionDate.
SELECT StudentName, AdmissionDate FROM Students WHERE MONTH(AdmissionDate) = 2;

-- 25. Write a SQL statement to display students whose date of birth is in September and show their name, date of birth, and birth month.
SELECT StudentName, DateOfBirth, MONTH(DateOfBirth) FROM Students WHERE MONTH(DateOfBirth) = 9;