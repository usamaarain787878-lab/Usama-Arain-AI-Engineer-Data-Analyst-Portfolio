-- ==========================================
-- 1. DATABASE AUR TABLE CREATION
-- ==========================================

CREATE DATABASE AttendanceDB;
USE AttendanceDB;

CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    AttendanceDate DATE
);

-- ==========================================
-- 2. INSERT RECORDS
-- ==========================================

INSERT INTO Attendance (AttendanceID, EmployeeName, AttendanceDate) VALUES
(1, 'Ali', '2026-01-05'),
(2, 'Ahmed', '2026-02-12'),
(3, 'Sara', '2026-03-18'),
(4, 'Ayesha', '2026-04-20'),
(5, 'Hamza', '2026-05-08'),
(6, 'Fatima', '2026-06-15'),
(7, 'Hassan', '2026-07-22'),
(8, 'Zainab', '2026-08-10'),
(9, 'Usman', '2026-09-25'),
(10, 'Maryam', '2026-10-12');

-- ==========================================
-- 3. SQL QUERIES (Task 4 to 12)
-- ==========================================

-- Task 4: June ke attendance records display karna
SELECT * FROM Attendance WHERE MONTH(AttendanceDate) = 6;

-- Task 5: Third Quarter (July, August, September) ke records
SELECT * FROM Attendance WHERE MONTH(AttendanceDate) BETWEEN 7 AND 9;

-- Task 6: Jinka date day 15 se zyada ho (> 15)
SELECT * FROM Attendance WHERE DAY(AttendanceDate) > 15;

-- Task 7: Saal 2026 ke records
SELECT * FROM Attendance WHERE YEAR(AttendanceDate) = 2026;

-- Task 8: April ya May ke records
SELECT * FROM Attendance WHERE MONTH(AttendanceDate) IN (4, 5);

-- Task 9: January se April tak ke records
SELECT * FROM Attendance WHERE MONTH(AttendanceDate) BETWEEN 1 AND 4;

-- Task 10: Jinka day 15 se 30 ke darmiyan ho
SELECT * FROM Attendance WHERE DAY(AttendanceDate) BETWEEN 15 AND 30;

-- Task 11: First Quarter (January, February, March) ke records
SELECT * FROM Attendance WHERE MONTH(AttendanceDate) BETWEEN 1 AND 3;

-- Task 12: Mahina (Month) May ho uske records
SELECT * FROM Attendance WHERE MONTH(AttendanceDate) = 5;