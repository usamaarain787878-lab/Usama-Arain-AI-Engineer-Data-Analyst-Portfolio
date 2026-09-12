CREATE DATABASE HospitalDB;

USE HospitalDB;

CREATE TABLE Patient (
    PatientID int,
    PatientName varchar(20),
    DoctorName varchar(20),
    Department varchar(20),
    City varchar(20)
);

INSERT INTO Patient (PatientID, PatientName, DoctorName, Department, City) VALUES
(1, 'Ahsan', 'Ahmed', 'Pediatrics', 'Karachi'),
(2, 'Bilal', 'Salman', 'Dermatology', 'Hyderabad'),
(3, 'Danish', 'Kamran', 'Cardiology', 'Lahore'),
(4, 'Farhan', 'Hassan', 'Neurology', 'Karachi'),
(5, 'Hamza', 'Tahir', 'Orthopedic', 'Sukkur'),
(6, 'Hina', 'Sana', 'Cardiology', 'Hyderabad'),
(7, 'Iqra', 'Ali', 'Gynecology', 'Lahore'),
(8, 'Jawad', 'Ahmed', 'Neurology', 'Karachi'),
(9, 'Kamran', 'Bilal', 'Orthopedic', 'Hyderabad'),
(10, 'Maria', 'Hina', 'Pediatrics', 'Sukkur'),
(11, 'Tahir', 'Asad', 'Oncology', 'Karachi'),
(12, 'Saad', 'Danish', 'Cardiology', 'Lahore'),
(13, 'Salman', 'Fahad', 'ENT', 'Hyderabad'),
(14, 'Zain', 'Kamran', 'Neurology', 'Karachi'),
(15, 'Zohaib', 'Ahmed', 'Oncology', 'Sukkur');

SELECT * FROM Patient WHERE PatientName LIKE 'H%';

SELECT * FROM Patient WHERE PatientName LIKE '%an';

SELECT * FROM Patient WHERE PatientName LIKE '%ar%';

SELECT * FROM Patient WHERE DoctorName LIKE 'A%';

SELECT * FROM Patient WHERE Department LIKE '%logy';

SELECT * FROM Patient WHERE City LIKE '%achi%';

SELECT * FROM Patient WHERE Department LIKE 'N%';

SELECT * FROM Patient WHERE DoctorName LIKE '%an';

SELECT * FROM Patient WHERE PatientName LIKE '____';

SELECT * FROM Patient WHERE PatientName LIKE '_____';

SELECT * FROM Patient WHERE PatientName LIKE 'S___';

SELECT * FROM Patient WHERE PatientName LIKE '_a%';

SELECT * FROM Patient WHERE DoctorName LIKE 'A____';

SELECT * FROM Patient WHERE City LIKE '_______';

SELECT * FROM Patient WHERE PatientName LIKE 'A%' OR PatientName LIKE 'B%' OR PatientName LIKE 'H%';

SELECT * FROM Patient WHERE PatientName LIKE '[M-Z]%';

SELECT * FROM Patient WHERE DoctorName LIKE 'A%' OR DoctorName LIKE 'K%' OR DoctorName LIKE 'S%';

SELECT * FROM Patient WHERE Department LIKE 'C%' OR Department LIKE 'D%';

SELECT * FROM Patient WHERE City LIKE '[K-L]%';

SELECT * FROM Patient WHERE PatientName LIKE '_[aeri]%';

SELECT * FROM Patient WHERE DoctorName LIKE '[A-F]%';

SELECT * FROM Patient WHERE Department LIKE 'O%' OR Department LIKE 'P%' OR Department LIKE 'N%';

SELECT * FROM Patient WHERE PatientName NOT LIKE 'A%';

SELECT * FROM Patient WHERE PatientName NOT LIKE 'A%' AND PatientName NOT LIKE 'B%' AND PatientName NOT LIKE 'H%';

SELECT * FROM Patient WHERE DoctorName NOT LIKE 'A%';

SELECT * FROM Patient WHERE Department NOT LIKE 'C%';

SELECT * FROM Patient WHERE City NOT LIKE 'K%' AND City NOT LIKE 'L%';

SELECT * FROM Patient WHERE PatientName NOT LIKE '[A-F]%';

SELECT * FROM Patient WHERE DoctorName NOT LIKE '[N-Z]%';

SELECT * FROM Patient WHERE PatientName LIKE 'H_%';

SELECT * FROM Patient WHERE PatientName LIKE '_a%n';

SELECT * FROM Patient WHERE DoctorName LIKE 'A_%';

SELECT * FROM Patient WHERE Department LIKE 'C_%';

SELECT * FROM Patient WHERE City LIKE 'H_%';

UPDATE Patient SET City = 'Islamabad' WHERE PatientName LIKE 'S%';

UPDATE Patient SET Department = 'Emergency' WHERE PatientName LIKE '[A-D]%';

UPDATE Patient SET DoctorName = 'Dr. Imran' WHERE PatientName NOT LIKE 'H%';

UPDATE Patient SET Department = 'General Medicine' WHERE DoctorName LIKE 'A%' OR DoctorName LIKE 'S%';

UPDATE Patient SET City = 'Multan' WHERE PatientName LIKE '_a%';

DELETE FROM Patient WHERE PatientName LIKE 'Z%';

DELETE FROM Patient WHERE PatientName LIKE 'A%' OR PatientName LIKE 'B%' OR PatientName LIKE 'H%';

DELETE FROM Patient WHERE DoctorName NOT LIKE 'A%';

DELETE FROM Patient WHERE Department LIKE '[N-P]%';

DELETE FROM Patient WHERE City LIKE 'K%';

DELETE FROM Patient WHERE PatientName LIKE '_____';

DELETE FROM Patient WHERE PatientName LIKE 'S_%';