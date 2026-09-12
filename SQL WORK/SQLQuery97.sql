CREATE DATABASE HospitalDB3;

USE HospitalDB3;

CREATE TABLE Patients (
    PatientID INT,
    PatientName VARCHAR(50),
    AdmissionDate DATE,
    DischargeDate DATE,
    DateOfBirth DATE
);

INSERT INTO Patients (PatientID, PatientName, AdmissionDate, DischargeDate, DateOfBirth) VALUES
(1, 'Ali', '2026-01-10', '2026-01-15', '1995-04-12'),
(2, 'Ahmed', '2026-02-18', '2026-02-23', '1988-07-25'),
(3, 'Sara', '2026-03-05', '2026-03-12', '2001-09-18'),
(4, 'Ayesha', '2026-04-20', '2026-04-25', '1997-11-30'),
(5, 'Hamza', '2026-05-08', '2026-05-14', '1992-02-15'),
(6, 'Talha', '2026-06-15', '2026-06-20', '2000-06-22'),
(7, 'Hassan', '2026-07-03', '2026-07-10', '1985-12-05'),
(8, 'Zainab', '2026-08-12', '2026-08-18', '1999-03-27'),
(9, 'Usman', '2026-09-01', '2026-09-06', '1994-10-10'),
(10, 'Maryam', '2026-10-15', '2026-10-22', '2002-01-20');

SELECT PatientName, YEAR(AdmissionDate) AS AdmissionYear FROM Patients;

SELECT PatientName, MONTH(AdmissionDate) AS AdmissionMonth FROM Patients;

SELECT PatientName, DAY(AdmissionDate) AS AdmissionDay FROM Patients;

SELECT PatientName, YEAR(DischargeDate) AS DischargeYear FROM Patients;

SELECT PatientName, MONTH(DischargeDate) AS DischargeMonth FROM Patients;

SELECT PatientName, DAY(DischargeDate) AS DischargeDay FROM Patients;

SELECT PatientName, YEAR(DateOfBirth) AS BirthYear FROM Patients;

SELECT PatientName, MONTH(DateOfBirth) AS BirthMonth FROM Patients;

SELECT PatientName, DAY(DateOfBirth) AS BirthDay FROM Patients;

SELECT PatientName, AdmissionDate, DATEPART(QUARTER, AdmissionDate) AS AdmissionQuarter FROM Patients;

SELECT PatientName, AdmissionDate, DATEPART(WEEK, AdmissionDate) AS AdmissionWeek FROM Patients;

SELECT PatientName, AdmissionDate, DATEPART(WEEKDAY, AdmissionDate) AS AdmissionWeekday FROM Patients;

SELECT PatientName, AdmissionDate, YEAR(AdmissionDate) AS AdmissionYear, MONTH(AdmissionDate) AS AdmissionMonth, DAY(AdmissionDate) AS AdmissionDay FROM Patients;

SELECT PatientName, DateOfBirth, YEAR(DateOfBirth) AS BirthYear, MONTH(DateOfBirth) AS BirthMonth, DAY(DateOfBirth) AS BirthDay FROM Patients;

SELECT PatientName, AdmissionDate, YEAR(AdmissionDate) AS AdmissionYear, MONTH(AdmissionDate) AS AdmissionMonth, DischargeDate, YEAR(DischargeDate) AS DischargeYear, MONTH(DischargeDate) AS DischargeMonth FROM Patients;

SELECT PatientName, AdmissionDate, DATEPART(QUARTER, AdmissionDate) AS AdmissionQuarter, DATEPART(WEEK, AdmissionDate) AS AdmissionWeek FROM Patients;

SELECT PatientName, AdmissionDate, YEAR(AdmissionDate) AS AdmissionYear, MONTH(AdmissionDate) AS AdmissionMonth, DAY(AdmissionDate) AS AdmissionDay, DATEPART(QUARTER, AdmissionDate) AS AdmissionQuarter, DATEPART(WEEK, AdmissionDate) AS AdmissionWeek, DATEPART(WEEKDAY, AdmissionDate) AS AdmissionWeekday FROM Patients;

SELECT PatientName, AdmissionDate, DischargeDate, MONTH(AdmissionDate) AS AdmissionMonth, MONTH(DischargeDate) AS DischargeMonth, MONTH(DateOfBirth) AS BirthMonth FROM Patients;

SELECT PatientName, YEAR(AdmissionDate) AS AdmissionYear, MONTH(AdmissionDate) AS AdmissionMonth, DAY(AdmissionDate) AS AdmissionDay, YEAR(DischargeDate) AS DischargeYear, MONTH(DischargeDate) AS DischargeMonth, DAY(DischargeDate) AS DischargeDay, YEAR(DateOfBirth) AS BirthYear, MONTH(DateOfBirth) AS BirthMonth, DAY(DateOfBirth) AS BirthDay FROM Patients;

SELECT PatientName, DateOfBirth, AdmissionDate, DischargeDate, YEAR(DateOfBirth) AS BirthYear, MONTH(DateOfBirth) AS BirthMonth, YEAR(AdmissionDate) AS AdmissionYear, MONTH(AdmissionDate) AS AdmissionMonth, DATEPART(QUARTER, AdmissionDate) AS AdmissionQuarter, YEAR(DischargeDate) AS DischargeYear, MONTH(DischargeDate) AS DischargeMonth FROM Patients;