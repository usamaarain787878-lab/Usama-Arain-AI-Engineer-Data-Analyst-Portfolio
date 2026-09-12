-- ==========================================================
-- COMPLETE SQL SCRIPT FOR SCHOOL EXAM MANAGEMENT (SchoolDB)
-- ==========================================================

-- 1. Create a database named SchoolDB for managing school examination information[span_1](start_span)[span_1](end_span)
CREATE DATABASE SchoolDB0;
GO

-- Database ko use karne ke liye select karein
USE SchoolDB0;
GO

-- 2. Inside the SchoolDB database, create a table named Exam[span_2](start_span)[span_2](end_span)
CREATE TABLE Exam (
    ExamID INT PRIMARY KEY,
    ExamName VARCHAR(50),
    Subject VARCHAR(50),
    ExamDate DATE
);
GO

-- 3. Insert the records into the Exam table[span_3](start_span)[span_3](end_span)
INSERT INTO Exam (ExamID, ExamName, Subject, ExamDate) VALUES 
(1, 'Mid Term Exam', 'Mathematics', '2026-10-15'),
(2, 'Mid Term Exam', 'English', '2026-10-25'),
(3, 'Mid Term Exam', 'Computer Science', '2026-11-05'),
(4, 'Final Exam', 'Physics', '2026-11-20'),
(5, 'Final Exam', 'Chemistry', '2026-12-05'),
(6, 'Final Exam', 'Mathematics', '2026-12-20'),
(7, 'Final Exam', 'English', '2027-01-10'),
(8, 'Final Exam', 'Computer Science', '2027-01-20');
GO

-- ==========================================================
-- SQL STATEMENTS (Tasks 4 to 26)
-- ==========================================================

-- 4. Display ExamName, Subject, Exam Date, and calculate the number of days remaining until each exam from current date[span_4](start_span)[span_4](end_span)
SELECT ExamName, Subject, ExamDate, DATEDIFF(DAY, GETDATE(), ExamDate) AS DaysRemaining
FROM Exam;

-- 5. Calculate the number of days remaining until the Mathematics Final Exam scheduled on 2026-12-20[span_5](start_span)[span_5](end_span)
SELECT DATEDIFF(DAY, GETDATE(), '2026-12-20') AS DaysRemaining
FROM Exam
WHERE Subject = 'Mathematics' AND ExamName = 'Final Exam' AND ExamDate = '2026-12-20';

-- 6. Display only those exams whose exam date is after the current date, along with the number of days remaining[span_6](start_span)[span_6](end_span)
SELECT ExamName, Subject, ExamDate, DATEDIFF(DAY, GETDATE(), ExamDate) AS DaysRemaining
FROM Exam
WHERE ExamDate > GETDATE();

-- 7. Find exams that will take place within the next 100 days and display the number of days remaining for each exam[span_7](start_span)[span_7](end_span)
SELECT ExamName, Subject, ExamDate, DATEDIFF(DAY, GETDATE(), ExamDate) AS DaysRemaining
FROM Exam
WHERE DATEDIFF(DAY, GETDATE(), ExamDate) BETWEEN 0 AND 100;

-- 8. Calculate the number of weeks remaining until each exam[span_8](start_span)[span_8](end_span)
SELECT ExamName, Subject, ExamDate, DATEDIFF(WEEK, GETDATE(), ExamDate) AS WeeksRemaining
FROM Exam;

-- 9. Calculate the number of months remaining until each exam[span_9](start_span)[span_9](end_span)
SELECT ExamName, Subject, ExamDate, DATEDIFF(MONTH, GETDATE(), ExamDate) AS MonthsRemaining
FROM Exam;

-- 10. Calculate the number of years between the current date and each Exam Date[span_10](start_span)[span_10](end_span)
SELECT ExamName, Subject, ExamDate, DATEDIFF(YEAR, GETDATE(), ExamDate) AS YearsRemaining
FROM Exam;

-- 11. Calculate the number of quarters between the current date and each Exam Date[span_11](start_span)[span_11](end_span)
SELECT ExamName, Subject, ExamDate, DATEDIFF(QUARTER, GETDATE(), ExamDate) AS QuartersRemaining
FROM Exam;

-- 12. Find exams that are scheduled within the next 30 days[span_12](start_span)[span_12](end_span)
SELECT * FROM Exam
WHERE DATEDIFF(DAY, GETDATE(), ExamDate) BETWEEN 0 AND 30;

-- 13. Find exams that are scheduled within the next 60 days[span_13](start_span)[span_13](end_span)
SELECT * FROM Exam
WHERE DATEDIFF(DAY, GETDATE(), ExamDate) BETWEEN 0 AND 60;

-- 14. Find exams that are scheduled within the next 90 days[span_14](start_span)[span_14](end_span)
SELECT * FROM Exam
WHERE DATEDIFF(DAY, GETDATE(), ExamDate) BETWEEN 0 AND 90;

-- 15. Find exams for which more than 30 days are remaining[span_15](start_span)[span_15](end_span)
SELECT * FROM Exam
WHERE DATEDIFF(DAY, GETDATE(), ExamDate) > 30;

-- 16. Find exams for which less than 60 days are remaining[span_16](start_span)[span_16](end_span)
SELECT * FROM Exam
WHERE DATEDIFF(DAY, GETDATE(), ExamDate) < 60 AND DATEDIFF(DAY, GETDATE(), ExamDate) >= 0;

-- 17. Calculate the number of days between today's date and the Mathematics exam[span_17](start_span)[span_17](end_span)
SELECT ExamName, Subject, ExamDate, DATEDIFF(DAY, GETDATE(), ExamDate) AS DaysDifference
FROM Exam
WHERE Subject = 'Mathematics';

-- 18. Calculate the number of days between today's date and the Computer Science exam[span_18](start_span)[span_18](end_span)
SELECT ExamName, Subject, ExamDate, DATEDIFF(DAY, GETDATE(), ExamDate) AS DaysDifference
FROM Exam
WHERE Subject = 'Computer Science';

-- 19. Find the exams that have the fewest number of days remaining[span_19](start_span)[span_19](end_span)
SELECT TOP 1 ExamName, Subject, ExamDate, DATEDIFF(DAY, GETDATE(), ExamDate) AS DaysRemaining
FROM Exam
WHERE ExamDate >= GETDATE()
ORDER BY DaysRemaining ASC;

-- 20. Find the exams that have the highest number of days remaining[span_20](start_span)[span_20](end_span)
SELECT TOP 1 ExamName, Subject, ExamDate, DATEDIFF(DAY, GETDATE(), ExamDate) AS DaysRemaining
FROM Exam
ORDER BY DaysRemaining DESC;

-- 21. Display ExamName, Subject, Exam Date, and the number of days remaining for each exam[span_21](start_span)[span_21](end_span)
SELECT ExamName, Subject, ExamDate, DATEDIFF(DAY, GETDATE(), ExamDate) AS DaysRemaining
FROM Exam;

-- 22. Display ExamName, Subject, Exam Date, and the number of months remaining for each exam[span_22](start_span)[span_22](end_span)
SELECT ExamName, Subject, ExamDate, DATEDIFF(MONTH, GETDATE(), ExamDate) AS MonthsRemaining
FROM Exam;

-- 23. Find exams where the difference between the current date and Exam Date is greater than 100 days[span_23](start_span)[span_23](end_span)
SELECT * FROM Exam
WHERE DATEDIFF(DAY, GETDATE(), ExamDate) > 100;

-- 24. Find exams where the difference between the current date and Exam Date is less than 100 days[span_24](start_span)[span_24](end_span)
SELECT * FROM Exam
WHERE DATEDIFF(DAY, GETDATE(), ExamDate) < 100;

-- 25. Calculate the number of days between the first exam and the last exam in the Exam table[span_25](start_span)[span_25](end_span)
SELECT DATEDIFF(DAY, MIN(ExamDate), MAX(ExamDate)) AS DaysBetweenFirstAndLast
FROM Exam;

-- 26. Calculate the number of days between the Mathematics Final Exam (2026-12-20) and the Computer Science Final Exam (2027-01-20)[span_26](start_span)[span_26](end_span)
SELECT DATEDIFF(DAY, '2026-12-20', '2027-01-20') AS DaysDifference;