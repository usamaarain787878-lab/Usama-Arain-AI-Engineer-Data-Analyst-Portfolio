-- =====================================================
-- 1. Create Database
-- =====================================================
CREATE DATABASE HospitalDB001;
GO

USE HospitalDB001;
GO

-- =====================================================
-- 2. Create Patient Table
-- =====================================================
CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    Gender VARCHAR(10),
    AdmissionDate DATE,
    DischargeDate DATE
);
GO

-- =====================================================
-- 3. Insert Records into Patient Table
-- =====================================================
INSERT INTO Patient (PatientID, PatientName, Gender, AdmissionDate, DischargeDate) VALUES
(1, 'Ali Khan', 'Male', '2026-01-05', '2026-01-10'),
(2, 'Sara Ahmed', 'Female', '2026-01-12', '2026-01-20'),
(3, 'Ahmed Raza', 'Male', '2026-02-01', '2026-02-05'),
(4, 'Ayesha Khan', 'Female', '2026-02-10', '2026-02-18'),
(5, 'Bilal Ahmed', 'Male', '2026-03-01', '2026-03-15'),
(6, 'Hina Ali', 'Female', '2026-03-10', '2026-03-14'),
(7, 'Usman Khan', 'Male', '2026-04-05', '2026-04-25'),
(8, 'Fatima Raza', 'Female', '2026-05-01', '2026-05-08'),
(9, 'Hamza Ali', 'Male', '2026-06-10', '2026-06-22'),
(10, 'Sana Ahmed', 'Female', '2026-07-15', '2026-07-30');
GO


-- =====================================================
-- Task Solutions (SQL Statements)
-- =====================================================

-- 1. Calculate how many days each patient stayed in the hospital
SELECT PatientID, PatientName, DATEDIFF(DAY, AdmissionDate, DischargeDate) AS TotalDaysStayed
FROM Patient;


-- 2. Display PatientName, Admission Date, Discharge Date, and total number of days stayed
SELECT PatientName, AdmissionDate, DischargeDate, DATEDIFF(DAY, AdmissionDate, DischargeDate) AS TotalDaysStayed
FROM Patient;


-- 3. Find patients who stayed in the hospital for more than 5 days
SELECT * 
FROM Patient
WHERE DATEDIFF(DAY, AdmissionDate, DischargeDate) > 5;


-- 4. Find patients who stayed in the hospital for more than 10 days
SELECT * 
FROM Patient
WHERE DATEDIFF(DAY, AdmissionDate, DischargeDate) > 10;


-- 5. Find patients who stayed in the hospital for less than 5 days
SELECT * 
FROM Patient
WHERE DATEDIFF(DAY, AdmissionDate, DischargeDate) < 5;


-- 6. Find patients who stayed in the hospital for exactly 8 days
SELECT * 
FROM Patient
WHERE DATEDIFF(DAY, AdmissionDate, DischargeDate) = 8;


-- 7. Find patients who stayed in the hospital for more than 15 days
SELECT * 
FROM Patient
WHERE DATEDIFF(DAY, AdmissionDate, DischargeDate) > 15;


-- 8. Calculate the number of weeks each patient stayed in the hospital
SELECT PatientID, PatientName, 
       DATEDIFF(DAY, AdmissionDate, DischargeDate) / 7.0 AS WeeksStayed
FROM Patient;


-- 9. Calculate the number of months between each patient's AdmissionDate and DischargeDate
SELECT PatientID, PatientName, 
       DATEDIFF(MONTH, AdmissionDate, DischargeDate) AS MonthsStayed
FROM Patient;


-- 10. Find the patient who stayed in the hospital for the fewest number of days
SELECT TOP 1 PatientID, PatientName, DATEDIFF(DAY, AdmissionDate, DischargeDate) AS TotalDaysStayed
FROM Patient
ORDER BY TotalDaysStayed ASC;


-- 11. Find the patient who stayed in the hospital for the highest number of days
SELECT TOP 1 PatientID, PatientName, DATEDIFF(DAY, AdmissionDate, DischargeDate) AS TotalDaysStayed
FROM Patient
ORDER BY TotalDaysStayed DESC;


-- 12. Find patients whose difference between AdmissionDate and Discharge Date is 7 days or less
SELECT * 
FROM Patient
WHERE DATEDIFF(DAY, AdmissionDate, DischargeDate) <= 7;


-- 13. Find patients who stayed in the hospital between 5 and 15 days
SELECT * 
FROM Patient
WHERE DATEDIFF(DAY, AdmissionDate, DischargeDate) BETWEEN 5 AND 15;


-- 14. Display PatientID, PatientName, Admission Date, Discharge Date, TotalDaysStayed
SELECT PatientID, 
       PatientName, 
       AdmissionDate, 
       DischargeDate, 
       DATEDIFF(DAY, AdmissionDate, DischargeDate) AS TotalDaysStayed
FROM Patient;