CREATE DATABASE StudentDB;

USE StudentDB;

CREATE TABLE Student (
    ID INT,
    Name VARCHAR(50),
    Course VARCHAR(50),
    Fee INT
);

INSERT INTO Student (ID, Name, Course, Fee) VALUES
(1, 'Ali', 'CIT', 15000),
(2, 'Ahmed', 'DIT', 12000),
(3, 'Sara', 'CIT', 18000),
(4, 'Ayesha', 'Office Automation', 10000),
(5, 'Bilal', 'DIT', 17000),
(6, 'Hina', 'CIT', 9000),
(7, 'Usman', 'Office Automation', 13000),
(8, 'Fatima', 'CIT', 20000),
(9, 'Danish', 'DIT', 14000),
(10, 'Sana', 'CIT', 16000),
(11, 'Hamza', 'Office Automation', 11000),
(12, 'Zainab', 'DIT', 19000);

SELECT * FROM Student WHERE Course = 'CIT' AND Fee > 15000;

SELECT Name, Fee FROM Student WHERE Course = 'DIT' AND Fee < 15000;

SELECT * FROM Student WHERE Fee > 10000 AND Fee < 18000;

SELECT * FROM Student WHERE Name = 'Ali' AND Course = 'CIT';

SELECT * FROM Student WHERE Course = 'Office Automation' AND Fee > 10000;

SELECT * FROM Student WHERE Course = 'CIT' OR Course = 'DIT';

SELECT * FROM Student WHERE Fee < 10000 OR Fee > 18000;

SELECT * FROM Student WHERE Name = 'Ali' OR Name = 'Sara';

SELECT * FROM Student WHERE Course = 'CIT' OR Course = 'Office Automation';

SELECT * FROM Student WHERE Fee = 12000 OR Fee = 20000;

SELECT * FROM Student WHERE (Course = 'CIT' OR Course = 'DIT') AND Fee > 15000;

SELECT * FROM Student WHERE (Name = 'Ali' OR Name = 'Sara' OR Name = 'Fatima') AND Course = 'CIT';

SELECT * FROM Student WHERE (ID = 1 OR ID = 3 OR ID = 5 OR ID = 7) AND Fee > 10000;

SELECT * FROM Student WHERE (Course = 'CIT' OR Course = 'Office Automation') AND Fee < 15000;

SELECT * FROM Student WHERE (Fee = 12000 OR Fee = 15000 OR Fee = 18000 OR Fee = 20000) AND Course = 'CIT';

SELECT * FROM Student WHERE Course IN ('CIT', 'DIT');

SELECT * FROM Student WHERE Name IN ('Ali', 'Ahmed', 'Sara', 'Sana');

SELECT * FROM Student WHERE ID IN (2, 4, 6, 8, 10);

SELECT * FROM Student WHERE Fee IN (9000, 12000, 20000);

SELECT * FROM Student WHERE Fee > 14000 AND Fee < 20000;

SELECT * FROM Student WHERE Fee >= 15000 AND Course = 'CIT';

SELECT * FROM Student WHERE Fee <= 12000 OR Course = 'DIT';

SELECT * FROM Student WHERE ID > 5 AND Fee < 18000;

SELECT * FROM Student WHERE ID <= 6 OR Course = 'CIT';

SELECT * FROM Student WHERE Course != 'CIT';

SELECT * FROM Student WHERE Fee != 15000;

SELECT * FROM Student WHERE Course != 'DIT' AND Fee > 10000;

SELECT * FROM Student WHERE Course != 'CIT' OR Fee > 18000;

SELECT * FROM Student WHERE Fee != 10000 AND Course = 'Office Automation';

UPDATE Student SET Fee = Fee + 2000 WHERE Course = 'CIT' AND Fee < 15000;

UPDATE Student SET Course = 'CIT' WHERE Name = 'Danish' AND Course = 'DIT';

UPDATE Student SET Fee = 16000 WHERE Course = 'DIT' AND Fee < 15000;

UPDATE Student SET Fee = Fee + 1000 WHERE Course = 'CIT' OR Course = 'DIT';

UPDATE Student SET Fee = 15000 WHERE Fee = 9000 OR Fee = 10000;

UPDATE Student SET Course = 'DIT' WHERE (Course = 'CIT' OR Course = 'Office Automation') AND ID > 8;

UPDATE Student SET Fee = Fee + 1500 WHERE Course IN ('CIT', 'DIT');

UPDATE Student SET Fee = 18000 WHERE ID IN (3, 5, 8, 12);

UPDATE Student SET Course = 'CIT' WHERE ID IN (2, 7, 9);

DELETE FROM Student WHERE Course = 'CIT' AND Fee < 10000;

DELETE FROM Student WHERE Course = 'DIT' AND Fee > 18000;

DELETE FROM Student WHERE Name = 'Ali' AND Course = 'CIT';

DELETE FROM Student WHERE Course = 'CIT' OR Course = 'Office Automation';

DELETE FROM Student WHERE Fee < 10000 OR Fee > 19000;

DELETE FROM Student WHERE ID = 2 OR ID = 10;

DELETE FROM Student WHERE Course IN ('CIT', 'DIT');

DELETE FROM Student WHERE ID IN (4, 6, 8, 11);

DELETE FROM Student WHERE Name IN ('Ahmed', 'Bilal', 'Hamza');

SELECT * FROM Student WHERE Course IN ('CIT', 'DIT') AND Fee > 12000 AND Fee != 18000;

SELECT * FROM Student WHERE Course IN ('CIT', 'Office Automation') AND ID > 3 AND Fee < 18000;

UPDATE Student SET Fee = Fee + 2000 WHERE Course IN ('CIT', 'DIT') AND Fee < 15000 AND ID != 6;

DELETE FROM Student WHERE Course = 'Office Automation' OR Fee < 10000;

SELECT * FROM Student WHERE Course IN ('CIT', 'DIT') AND Fee BETWEEN 12000 AND 19000 AND ID NOT IN (2, 9);