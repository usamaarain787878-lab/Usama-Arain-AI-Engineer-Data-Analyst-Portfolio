CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Students (
StudentID INT,
StudentName VARCHAR(50),
AdmissionDate DATE,
BirthDate DATE
);

INSERT INTO Students (StudentID, StudentName, AdmissionDate, BirthDate) VALUES 
(1, 'Ali', '2026-01-15', '2005-05-10'),
(2, 'Ahmed', '2026-02-20', '2004-08-15'),
(3, 'Sara', '2026-03-12', '2005-03-25'),
(4, 'Ayesha', '2026-04-18', '2004-11-05'),
(5, 'Hamza', '2026-05-22', '2005-01-30'),
(6, 'Talha', '2026-06-10', '2004-07-12'),
(7, 'Hassan', '2026-07-25', '2005-09-20'),
(8, 'Zainab', '2026-08-05', '2004-12-18'),
(9, 'Usman', '2026-09-01', '2005-02-14'),
(10, 'Maryam', '2026-10-12', '2005-06-28');

SELECT StudentName, YEAR(AdmissionDate) FROM Students;

SELECT StudentName, MONTH(AdmissionDate) FROM Students;

SELECT StudentName, DAY(AdmissionDate) FROM Students;

SELECT StudentName, YEAR(BirthDate) FROM Students;

SELECT StudentName, MONTH(BirthDate) FROM Students;

SELECT StudentName, DAY(BirthDate) FROM Students;

SELECT StudentName, AdmissionDate, DATEPART(QUARTER, AdmissionDate) FROM Students;

SELECT StudentName, AdmissionDate, DATEPART(WEEK, AdmissionDate) FROM Students;

SELECT StudentName, AdmissionDate, DATEPART(WEEKDAY, AdmissionDate) FROM Students;

SELECT StudentName, AdmissionDate, YEAR(AdmissionDate), MONTH(AdmissionDate), DAY(AdmissionDate) FROM Students;

SELECT StudentName, BirthDate, YEAR(BirthDate), MONTH(BirthDate), DAY(BirthDate) FROM Students;

SELECT StudentName, AdmissionDate, YEAR(AdmissionDate), DATEPART(QUARTER, AdmissionDate) FROM Students;

SELECT StudentName, BirthDate, MONTH(BirthDate), DAY(BirthDate) FROM Students;

SELECT StudentName, AdmissionDate, YEAR(AdmissionDate), MONTH(AdmissionDate), DAY(AdmissionDate), DATEPART(QUARTER, AdmissionDate), DATEPART(WEEK, AdmissionDate) FROM Students;

SELECT YEAR(AdmissionDate), MONTH(AdmissionDate), DAY(AdmissionDate) FROM Students;

SELECT YEAR(BirthDate), MONTH(BirthDate), DAY(BirthDate) FROM Students;

SELECT DATEPART(QUARTER, AdmissionDate) FROM Students;

SELECT DATEPART(WEEK, AdmissionDate) FROM Students;

SELECT DATEPART(WEEKDAY, BirthDate) FROM Students;

SELECT StudentName, AdmissionDate, BirthDate, YEAR(AdmissionDate), MONTH(AdmissionDate), DAY(AdmissionDate), YEAR(BirthDate), MONTH(BirthDate), DAY(BirthDate) FROM Students;