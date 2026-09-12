CREATE DATABASE TrainingDB;

USE TrainingDB;

CREATE TABLE Course (
    CourseID int,
    CourseName varchar(20),
    [Instructor Name] varchar(20),
    Duration varchar(20),
    Batch varchar(20)
);

INSERT INTO Course (CourseID, CourseName, [Instructor Name], Duration, Batch) VALUES
(1, 'Python', 'Ahmed', '3 Months', 'Morning'),
(2, 'Java', 'Bilal', '4 Months', 'Evening'),
(3, 'CSharp', 'Kamran', '6 Months', 'Weekend'),
(4, 'SQL', 'Salman', '2 Months', 'Morning'),
(5, 'HTML', 'Hassan', '1 Month', 'Evening'),
(6, 'CSS', 'Ayesha', '1 Month', 'Weekend'),
(7, 'JavaScript', 'Tahir', '5 Months', 'Morning'),
(8, 'Bootstrap', 'Hina', '2 Months', 'Evening'),
(9, 'React', 'Danish', '4 Months', 'Weekend'),
(10, 'Angular', 'Maria', '5 Months', 'Morning'),
(11, 'Flutter', 'Farhan', '6 Months', 'Evening'),
(12, 'PHP', 'Sana', '3 Months', 'Weekend'),
(13, 'Laravel', 'Imran', '4 Months', 'Morning'),
(14, 'ASPNET', 'Asad', '5 Months', 'Evening'),
(15, 'MySQL', 'Jawad', '2 Months', 'Weekend');

SELECT * FROM Course WHERE CourseName LIKE 'J%';

SELECT * FROM Course WHERE CourseName LIKE '%SQL';

SELECT * FROM Course WHERE CourseName LIKE '%Script%';

SELECT * FROM Course WHERE [Instructor Name] LIKE 'A%';

SELECT * FROM Course WHERE Batch LIKE '%ing';

SELECT * FROM Course WHERE Duration LIKE '%Month%';

SELECT * FROM Course WHERE CourseName LIKE 'B%';

SELECT * FROM Course WHERE [Instructor Name] LIKE '%an';

SELECT * FROM Course WHERE CourseName LIKE '___';

SELECT * FROM Course WHERE CourseName LIKE '____';

SELECT * FROM Course WHERE CourseName LIKE 'P___';

SELECT * FROM Course WHERE CourseName LIKE '_a%';

SELECT * FROM Course WHERE [Instructor Name] LIKE '_____';

SELECT * FROM Course WHERE Batch LIKE '_______';

SELECT * FROM Course WHERE CourseName LIKE 'P%' OR CourseName LIKE 'J%' OR CourseName LIKE 'R%';

SELECT * FROM Course WHERE CourseName LIKE '[A-H]%';

SELECT * FROM Course WHERE [Instructor Name] LIKE '[AHS]%';

SELECT * FROM Course WHERE Batch LIKE '[MW]%';

SELECT * FROM Course WHERE CourseName LIKE '_[aye]%';

SELECT * FROM Course WHERE [Instructor Name] LIKE '[D-K]%';

SELECT * FROM Course WHERE Duration LIKE '[1-3]%';

SELECT * FROM Course WHERE CourseName NOT LIKE 'J%';

SELECT * FROM Course WHERE CourseName NOT LIKE 'P%' AND CourseName NOT LIKE 'J%' AND CourseName NOT LIKE 'R%';

SELECT * FROM Course WHERE [Instructor Name] NOT LIKE 'A%';

SELECT * FROM Course WHERE Batch NOT LIKE 'M%';

SELECT * FROM Course WHERE CourseName NOT LIKE '[A-F]%';

SELECT * FROM Course WHERE [Instructor Name] NOT LIKE '[N-Z]%';

SELECT * FROM Course WHERE Duration NOT LIKE '[12]%';

SELECT * FROM Course WHERE CourseName LIKE 'J_%';

SELECT * FROM Course WHERE CourseName LIKE '_a%a';

SELECT * FROM Course WHERE [Instructor Name] LIKE 'A_%';

SELECT * FROM Course WHERE Batch LIKE 'E_%';

SELECT * FROM Course WHERE CourseName LIKE '[A-L]%L';

SELECT * FROM Course WHERE [Instructor Name] NOT LIKE 'A%' AND [Instructor Name] LIKE '%n';

UPDATE Course SET Batch = 'Online' WHERE CourseName LIKE 'P%';

UPDATE Course SET Duration = '6 Months' WHERE CourseName LIKE '[A-H]%';

UPDATE Course SET [Instructor Name] = 'Usman' WHERE CourseName NOT LIKE 'J%';

UPDATE Course SET Batch = 'Weekend' WHERE [Instructor Name] LIKE '[AHS]%';

UPDATE Course SET Duration = '3 Months' WHERE CourseName LIKE '_a%';

DELETE FROM Course WHERE CourseName LIKE 'A%';

DELETE FROM Course WHERE CourseName LIKE 'P%' OR CourseName LIKE 'J%' OR CourseName LIKE 'R%';

DELETE FROM Course WHERE [Instructor Name] NOT LIKE 'A%';

DELETE FROM Course WHERE CourseName LIKE '[A-F]%';

DELETE FROM Course WHERE Batch LIKE 'E_%';

DELETE FROM Course WHERE CourseName LIKE '___';

DELETE FROM Course WHERE CourseName LIKE 'J_%';