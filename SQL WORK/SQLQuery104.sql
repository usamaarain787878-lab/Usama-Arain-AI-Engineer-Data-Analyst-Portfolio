CREATE DATABASE SchoolDB0001;

USE SchoolDB0001;

CREATE TABLE Students (
    StudentID INT,
    StudentName VARCHAR(50),
    AdmissionDate DATE,
    DateOfBirth DATE,
    FeeSubmissionDate DATE
);

INSERT INTO Students (StudentID, StudentName, AdmissionDate, DateOfBirth, FeeSubmissionDate) VALUES
(1, 'Ali', '2025-01-15', '2005-06-12', '2026-09-01'),
(2, 'Ahmed', '2025-02-20', '2004-11-25', '2026-09-03'),
(3, 'Sara', '2025-03-10', '2006-02-18', '2026-09-05'),
(4, 'Ayesha', '2025-04-05', '2005-09-30', '2026-09-06'),
(5, 'Hassan', '2025-05-22', '2004-12-15', '2026-09-08'),
(6, 'Zainab', '2025-06-18', '2006-07-21', '2026-09-09'),
(7, 'Usman', '2025-07-12', '2005-03-14', '2026-09-10'),
(8, 'Fatima', '2025-08-25', '2006-10-05', '2026-09-11');

SELECT StudentName, CONVERT(VARCHAR(10), AdmissionDate, 101) AS AdmissionDate FROM Students;

SELECT StudentName, CONVERT(VARCHAR(10), DateOfBirth, 102) AS DateOfBirth FROM Students;

SELECT StudentName, CONVERT(VARCHAR(10), AdmissionDate, 103) AS AdmissionDate FROM Students;

SELECT StudentName, CONVERT(VARCHAR(10), DateOfBirth, 104) AS DateOfBirth FROM Students;

SELECT StudentName, CONVERT(VARCHAR(10), FeeSubmissionDate, 105) AS FeeSubmissionDate FROM Students;

SELECT StudentName, CONVERT(VARCHAR(11), AdmissionDate, 106) AS AdmissionDate FROM Students;

SELECT StudentName, CONVERT(VARCHAR(11), DateOfBirth, 107) AS DateOfBirth FROM Students;

SELECT StudentName, CONVERT(VARCHAR(10), FeeSubmissionDate, 110) AS FeeSubmissionDate FROM Students;

SELECT StudentName, CONVERT(VARCHAR(10), AdmissionDate, 111) AS AdmissionDate FROM Students;

SELECT StudentName, CONVERT(VARCHAR(8), DateOfBirth, 112) AS DateOfBirth FROM Students;

SELECT StudentName, CONVERT(VARCHAR(19), FeeSubmissionDate, 120) AS FeeSubmissionDate FROM Students;

SELECT StudentName, CONVERT(VARCHAR(23), FeeSubmissionDate, 121) AS FeeSubmissionDate FROM Students;

SELECT StudentName, CONVERT(VARCHAR(10), AdmissionDate, 126) AS AdmissionDate FROM Students;

SELECT StudentName, CONVERT(VARCHAR(30), DateOfBirth, 130) AS DateOfBirth FROM Students;

SELECT StudentName, CONVERT(VARCHAR(30), DateOfBirth, 131) AS DateOfBirth FROM Students;

SELECT StudentName, CONVERT(VARCHAR(10), AdmissionDate, 103) AS AdmissionDate, CONVERT(VARCHAR(10), DateOfBirth, 103) AS DateOfBirth FROM Students;

SELECT StudentName, CONVERT(VARCHAR(10), AdmissionDate, 101) AS AdmissionDate, CONVERT(VARCHAR(10), FeeSubmissionDate, 101) AS FeeSubmissionDate FROM Students;

SELECT StudentName, CONVERT(VARCHAR(8), FeeSubmissionDate, 112) AS FeeSubmissionDate FROM Students;

SELECT StudentName, CONVERT(VARCHAR(11), DateOfBirth, 106) AS DateOfBirth FROM Students;

SELECT StudentName, CONVERT(VARCHAR(10), AdmissionDate, 104) AS AdmissionDate FROM Students;