-- =========================================================
-- 1. Create a database named HospitalDB
-- =========================================================
CREATE DATABASE HospitalDB00;


-- Switch to the newly created database
USE HospitalDB00;


-- =========================================================
-- 2. Inside the database, create a table named PatientAdmission
-- =========================================================
CREATE TABLE PatientAdmission (
    AdmissionID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    DoctorName VARCHAR(50),
    AdmissionDate DATE,
    DischargeDate DATE,
    RoomNumber INT
);
GO

-- =========================================================
-- 3. Insert the records
-- =========================================================
INSERT INTO PatientAdmission (AdmissionID, PatientName, DoctorName, AdmissionDate, DischargeDate, RoomNumber) VALUES
(1, 'Ali', 'Dr. Ahmed', '2026-01-05', '2026-01-10', 101),
(2, 'Sara', 'Dr. Hassan', '2026-02-12', '2026-02-18', 102),
(3, 'Ahmed', 'Dr. Imran', '2026-03-08', '2026-03-15', 103),
(4, 'Ayesha', 'Dr. Ahmed', '2026-04-20', '2026-04-25', 104),
(5, 'Bilal', 'Dr. Hassan', '2026-05-11', '2026-05-20', 105),
(6, 'Hina', 'Dr. Imran', '2026-06-15', '2026-06-19', 106),
(7, 'Usman', 'Dr. Ahmed', '2026-07-22', '2026-07-30', 107),
(8, 'Talha', 'Dr. Hassan', '2026-08-03', '2026-08-10', 108);
GO

-- =========================================================
-- 4. Display each patient's admission month name
-- =========================================================
SELECT PatientName, DATENAME(MONTH, AdmissionDate) AS AdmissionMonth
FROM PatientAdmission;


-- =========================================================
-- 5. Display each patient's admission weekday name
-- =========================================================
SELECT PatientName, DATENAME(WEEKDAY, AdmissionDate) AS AdmissionWeekday
FROM PatientAdmission;


-- =========================================================
-- 6. Display the patient's name and the month name of their discharge date
-- =========================================================
SELECT PatientName, DATENAME(MONTH, DischargeDate) AS DischargeMonth
FROM PatientAdmission;


-- =========================================================
-- 7. Find patients who were admitted in March
-- =========================================================
SELECT * 
FROM PatientAdmission
WHERE DATENAME(MONTH, AdmissionDate) = 'March';
-- Or alternatively using MONTH number:
-- WHERE MONTH(AdmissionDate) = 3;


-- =========================================================
-- 8. Find patients who were admitted on a Monday
-- =========================================================
SELECT * 
FROM PatientAdmission
WHERE DATENAME(WEEKDAY, AdmissionDate) = 'Monday';


-- =========================================================
-- 9. Find patients who were admitted in August
-- =========================================================
SELECT * 
FROM PatientAdmission
WHERE DATENAME(MONTH, AdmissionDate) = 'August';
-- Or alternatively using MONTH number:
-- WHERE MONTH(AdmissionDate) = 8;


-- =========================================================
-- 10. Find patients who were admitted on a Thursday
-- =========================================================
SELECT * 
FROM PatientAdmission
WHERE DATENAME(WEEKDAY, AdmissionDate) = 'Thursday';