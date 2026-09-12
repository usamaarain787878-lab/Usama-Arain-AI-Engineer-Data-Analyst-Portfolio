CREATE DATABASE SchoolDB;

USE SchoolDB;

CREATE TABLE Student (
    StudentID int,
    StudentName varchar(20),
    City varchar(20),
    Course varchar(20),
    Phone varchar(20)
);

INSERT INTO Student (StudentID, StudentName, City, Course, Phone) VALUES
(1, 'Hamza', 'Hyderabad', 'CIT', '03001234567'),
(2, 'Humza', 'Karachi', 'DIT', '03111234567'),
(3, 'Hamid', 'Hyderabad', 'CIT', '03221234567'),
(4, 'Hammad', 'Lahore', 'Python', '03331234567'),
(5, 'Ahmed', 'Karachi', 'Java', '03441234567'),
(6, 'Ahmad', 'Hyderabad', 'Java', '03551234567'),
(7, 'Ali', 'Lahore', 'CIT', '03661234567'),
(8, 'Alia', 'Karachi', 'DIT', '03771234567'),
(9, 'Asad', 'Hyderabad', 'Python', '03881234567'),
(10, 'Ahsan', 'Lahore', 'CIT', '03991234567'),
(11, 'Sana', 'Karachi', 'Java', '03012345678'),
(12, 'Saba', 'Hyderabad', 'DIT', '03122345678'),
(13, 'Samina', 'Lahore', 'Python', '03232345678'),
(14, 'Salman', 'Karachi', 'CIT', '03342345678'),
(15, 'Sameer', 'Hyderabad', 'Java', '03452345678');

SELECT * FROM Student WHERE StudentName LIKE '____';

SELECT * FROM Student WHERE StudentName LIKE 'Ali_';

SELECT * FROM Student WHERE StudentName LIKE 'H___';

SELECT * FROM Student WHERE StudentName LIKE 'Ham_';

SELECT * FROM Student WHERE StudentName LIKE '_a%';

SELECT * FROM Student WHERE StudentName LIKE '__m%';

SELECT * FROM Student WHERE StudentName LIKE 'A_i';

SELECT * FROM Student WHERE StudentName LIKE 'S___';

SELECT * FROM Student WHERE StudentName LIKE 'Sa__';

SELECT * FROM Student WHERE StudentName LIKE '____n';

SELECT * FROM Student WHERE StudentName LIKE 'Ham%';

SELECT * FROM Student WHERE StudentName LIKE 'Ah%';

SELECT * FROM Student WHERE StudentName LIKE '%a';

SELECT * FROM Student WHERE StudentName LIKE '%n';

SELECT * FROM Student WHERE StudentName LIKE '%am%';

SELECT * FROM Student WHERE StudentName LIKE '%li%';

SELECT * FROM Student WHERE StudentName LIKE 'Sa%';

SELECT * FROM Student WHERE StudentName LIKE 'A%d';

SELECT * FROM Student WHERE StudentName LIKE '%a%';

SELECT * FROM Student WHERE StudentName NOT LIKE 'A%';

SELECT * FROM Student WHERE StudentName LIKE 'H_%';

SELECT * FROM Student WHERE StudentName LIKE 'A_d';

SELECT * FROM Student WHERE StudentName LIKE 'S__%';

SELECT * FROM Student WHERE StudentName LIKE '_a%';

SELECT * FROM Student WHERE StudentName LIKE 'H_d';

SELECT * FROM Student WHERE StudentName LIKE 'A_%';

SELECT * FROM Student WHERE StudentName LIKE '__%a';

SELECT * FROM Student WHERE StudentName LIKE 'S_a';

SELECT * FROM Student WHERE City LIKE 'Hy%';

SELECT * FROM Student WHERE City LIKE '%i';

SELECT * FROM Student WHERE Course LIKE 'C%';

SELECT * FROM Student WHERE Course LIKE '%IT%';

SELECT * FROM Student WHERE Phone LIKE '030%';

SELECT * FROM Student WHERE Phone LIKE '%567';

SELECT * FROM Student WHERE Phone LIKE '03_%';

SELECT * FROM Student WHERE Course LIKE '___';