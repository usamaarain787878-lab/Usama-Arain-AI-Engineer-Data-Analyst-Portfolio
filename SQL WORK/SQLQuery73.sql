-- 1. Create a database named TravelDB
CREATE DATABASE TravelDB;
USE TravelDB;

-- 2. Create a table named Bookings
CREATE TABLE Bookings (
    BookingID INT,
    CustomerName VARCHAR(50),
    Destination VARCHAR(30),
    TravelType VARCHAR(20),
    Travelers INT,
    Amount INT,
    Agent VARCHAR(50)
);

-- 3. Insert the Following Records
INSERT INTO Bookings (BookingID, CustomerName, Destination, TravelType, Travelers, Amount, Agent) VALUES
(1, 'Ali', 'Dubai', 'International', 3, 180000, 'Ahmed'),
(2, 'Sara', 'Karachi', 'Domestic', 2, 60000, 'Bilal'),
(3, 'Hamza', 'Dubai', 'International', 4, 240000, 'Ahmed'),
(4, 'Ayesha', 'Lahore', 'Domestic', 3, 90000, 'Sana'),
(5, 'Usman', 'Dubai', 'International', 2, 120000, 'Bilal'),
(6, 'Hina', 'Islamabad', 'Domestic', 4, 140000, 'Sana'),
(7, 'Zain', 'Karachi', 'Domestic', 5, 150000, 'Ahmed'),
(8, 'Maryam', 'Dubai', 'International', 3, 210000, 'Sana'),
(9, 'Bilal', 'Lahore', 'Domestic', 2, 70000, 'Bilal'),
(10, 'Fatima', 'Islamabad', 'Domestic', 3, 105000, 'Ahmed'),
(11, 'Saad', 'Dubai', 'International', 5, 300000, 'Sana'),
(12, 'Noor', 'Karachi', 'Domestic', 4, 120000, 'Bilal');


-- 4. Total number of travelers for each TravelType
SELECT TravelType, SUM(Travelers) AS 'Total Travelers'
FROM Bookings
GROUP BY TravelType;


-- 5. Average booking amount for each Destination, considering only Domestic bookings
SELECT Destination, AVG(Amount) AS 'Average Amount'
FROM Bookings
WHERE TravelType = 'Domestic'
GROUP BY Destination;


-- 6. Maximum booking amount for each Agent, considering Amount > 100000
SELECT Agent, MAX(Amount) AS 'Maximum Amount'
FROM Bookings
WHERE Amount > 100000
GROUP BY Agent
ORDER BY MAX(Amount) DESC;


-- 7. Total booking amount for each TravelType, where Travelers > 2 and Total Amount > 500000
SELECT TravelType, SUM(Amount) AS 'Total Amount'
FROM Bookings
WHERE Travelers > 2
GROUP BY TravelType
HAVING SUM(Amount) > 500000
ORDER BY SUM(Amount) DESC;


-- 8. Number of bookings for each Agent
SELECT Agent, COUNT(*) AS 'Number of Bookings'
FROM Bookings
GROUP BY Agent;


-- 9. Average number of travelers for each Destination, where Amount > 100000
SELECT Destination, CAST(AVG(Travelers * 1.0) AS DECIMAL(10,2)) AS 'Average Travelers'
FROM Bookings
WHERE Amount > 100000
GROUP BY Destination;


-- 10. Minimum booking amount for each TravelType, where Travelers >= 3
SELECT TravelType, MIN(Amount) AS 'Minimum Amount'
FROM Bookings
WHERE Travelers >= 3
GROUP BY TravelType
ORDER BY MIN(Amount) ASC;


-- 11. Number of bookings for each Agent where Destination is 'Dubai' (having > 1 booking)
SELECT Agent, COUNT(*) AS 'Number of Bookings'
FROM Bookings
WHERE Destination = 'Dubai'
GROUP BY Agent
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;


-- 12. Total booking amount for each Destination
SELECT Destination, SUM(Amount) AS 'Total Amount'
FROM Bookings
GROUP BY Destination;


-- 13. Maximum number of travelers for each TravelType, where Destination != 'Dubai'
SELECT TravelType, MAX(Travelers) AS 'Maximum Travelers'
FROM Bookings
WHERE Destination != 'Dubai'
GROUP BY TravelType;


-- 14. Number of bookings for each Destination, where CustomerName starts with 'A'
SELECT Destination, COUNT(*) AS 'Number of Bookings'
FROM Bookings
WHERE CustomerName LIKE 'A%'
GROUP BY Destination
ORDER BY COUNT(*) DESC;


-- 15. Average booking amount for each Agent for International bookings (Average > 200000)
SELECT Agent, AVG(Amount) AS 'Average Amount'
FROM Bookings
WHERE TravelType = 'International'
GROUP BY Agent
HAVING AVG(Amount) > 200000
ORDER BY AVG(Amount) DESC;


-- 16. Minimum booking amount for each Destination
SELECT Destination, MIN(Amount) AS 'Minimum Amount'
FROM Bookings
GROUP BY Destination;


-- 17. Total number of travelers for each Agent, where Amount >= 120000
SELECT Agent, SUM(Travelers) AS 'Total Travelers'
FROM Bookings
WHERE Amount >= 120000
GROUP BY Agent;


-- 18. Average booking amount for each TravelType, where Travelers < 5
SELECT TravelType, AVG(Amount) AS 'Average Amount'
FROM Bookings
WHERE Travelers < 5
GROUP BY TravelType
ORDER BY AVG(Amount) ASC;


-- 19. Total booking amount for Domestic bookings by Destination (Total Amount > 100000)
SELECT Destination, SUM(Amount) AS 'Total Amount'
FROM Bookings
WHERE TravelType = 'Domestic'
GROUP BY Destination
HAVING SUM(Amount) > 100000
ORDER BY SUM(Amount) DESC;


-- 20. Maximum number of travelers for each Agent
SELECT Agent, MAX(Travelers) AS 'Maximum Travelers'
FROM Bookings
GROUP BY Agent;


-- 21. Number of bookings for each TravelType, where Amount < 200000
SELECT TravelType, COUNT(*) AS 'Number of Bookings'
FROM Bookings
WHERE Amount < 200000
GROUP BY TravelType;


-- 22. Total booking amount for each Agent where Travelers > 2 AND Amount > 100000
SELECT Agent, SUM(Amount) AS 'Total Amount'
FROM Bookings
WHERE Travelers > 2 AND Amount > 100000
GROUP BY Agent
ORDER BY SUM(Amount) DESC;


-- 23. Number of bookings for each Destination where Amount > 100000 (having > 1 booking)
SELECT Destination, COUNT(*) AS 'Number of Bookings'
FROM Bookings
WHERE Amount > 100000
GROUP BY Destination
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;


-- 24. Average booking amount for each Agent
SELECT Agent, AVG(Amount) AS 'Average Amount'
FROM Bookings
GROUP BY Agent;


-- 25. Total booking amount for each Destination where TravelType = 'International' OR Travelers > 4
SELECT Destination, SUM(Amount) AS 'Total Amount'
FROM Bookings
WHERE TravelType = 'International' OR Travelers > 4
GROUP BY Destination;


-- 26. Maximum booking amount for Destinations 'Dubai' and 'Karachi'
SELECT Destination, MAX(Amount) AS 'Maximum Amount'
FROM Bookings
WHERE Destination IN ('Dubai', 'Karachi')
GROUP BY Destination
ORDER BY MAX(Amount) DESC;


-- 27. Average travelers for Agent where Amount > 100000 AND TravelType = 'Domestic' (Average > 3)
SELECT Agent, CAST(AVG(Travelers * 1.0) AS DECIMAL(10,2)) AS 'Average Travelers'
FROM Bookings
WHERE Amount > 100000 AND TravelType = 'Domestic'
GROUP BY Agent
HAVING AVG(Travelers * 1.0) > 3
ORDER BY AVG(Travelers * 1.0) DESC;


-- 28. Total number of bookings for each Destination
SELECT Destination, COUNT(*) AS 'Number of Bookings'
FROM Bookings
GROUP BY Destination;


-- 29. Minimum booking amount for each Agent where CustomerName ends with 'a'
SELECT Agent, MIN(Amount) AS 'Minimum Amount'
FROM Bookings
WHERE CustomerName LIKE '%a'
GROUP BY Agent;


-- 30. Total number of travelers for each Destination where TravelType = 'Domestic' OR Amount > 200000
SELECT Destination, SUM(Travelers) AS 'Total Travelers'
FROM Bookings
WHERE TravelType = 'Domestic' OR Amount > 200000
GROUP BY Destination
ORDER BY SUM(Travelers) ASC;


-- 31. Total booking amount for Agent where Destination 'Dubai' or 'Karachi' (Total > 300000)
SELECT Agent, SUM(Amount) AS 'Total Amount'
FROM Bookings
WHERE Destination IN ('Dubai', 'Karachi')
GROUP BY Agent
HAVING SUM(Amount) > 300000
ORDER BY SUM(Amount) DESC;


-- 32. Total booking amount for each Agent
SELECT Agent, SUM(Amount) AS 'Total Amount'
FROM Bookings
GROUP BY Agent;


-- 33. Number of bookings for each Agent where Travelers > 3
SELECT Agent, COUNT(*) AS 'Number of Bookings'
FROM Bookings
WHERE Travelers > 3
GROUP BY Agent;


-- 34. Average booking amount for each Destination where Amount >= 120000
SELECT Destination, AVG(Amount) AS 'Average Amount'
FROM Bookings
WHERE Amount >= 120000
GROUP BY Destination
ORDER BY AVG(Amount) DESC;


-- 35. Total travelers for Domestic bookings by Agent (Total Travelers > 5)
SELECT Agent, SUM(Travelers) AS 'Total Travelers'
FROM Bookings
WHERE TravelType = 'Domestic'
GROUP BY Agent
HAVING SUM(Travelers) > 5
ORDER BY SUM(Travelers) DESC;


-- 36. Average number of travelers for each TravelType
SELECT TravelType, CAST(AVG(Travelers * 1.0) AS DECIMAL(10,2)) AS 'Average Travelers'
FROM Bookings
GROUP BY TravelType;


-- 37. Maximum booking amount for each Agent for Domestic bookings
SELECT Agent, MAX(Amount) AS 'Maximum Amount'
FROM Bookings
WHERE TravelType = 'Domestic'
GROUP BY Agent;


-- 38. Minimum booking amount for each Destination where TravelType = 'Domestic' OR Travelers > 3
SELECT Destination, MIN(Amount) AS 'Minimum Amount'
FROM Bookings
WHERE TravelType = 'Domestic' OR Travelers > 3
GROUP BY Destination
ORDER BY MIN(Amount) ASC;


-- 39. Number of bookings for each Agent where Amount >= 100000 (having at least 2 bookings)
SELECT Agent, COUNT(*) AS 'Number of Bookings'
FROM Bookings
WHERE Amount >= 100000
GROUP BY Agent
HAVING COUNT(*) >= 2
ORDER BY COUNT(*) DESC;


-- 40. Total number of travelers for each Destination
SELECT Destination, SUM(Travelers) AS 'Total Travelers'
FROM Bookings
GROUP BY Destination;


-- 41. Average booking amount for each Agent where Amount < 200000
SELECT Agent, AVG(Amount) AS 'Average Amount'
FROM Bookings
WHERE Amount < 200000
GROUP BY Agent;


-- 42. Total booking amount for each TravelType where Travelers <= 3
SELECT TravelType, SUM(Amount) AS 'Total Amount'
FROM Bookings
WHERE Travelers <= 3
GROUP BY TravelType
ORDER BY SUM(Amount) ASC;


-- 43. Maximum booking amount for International destinations (> 150000)
SELECT Destination, MAX(Amount) AS 'Maximum Amount'
FROM Bookings
WHERE TravelType = 'International'
GROUP BY Destination
HAVING MAX(Amount) > 150000
ORDER BY MAX(Amount) DESC;


-- 43 (Alternative Label in PDF). Minimum number of travelers for each Agent
SELECT Agent, MIN(Travelers) AS 'Minimum Travelers'
FROM Bookings
GROUP BY Agent;


-- 44. Total booking amount for each Destination where CustomerName starts with 'S'
SELECT Destination, SUM(Amount) AS 'Total Amount'
FROM Bookings
WHERE CustomerName LIKE 'S%'
GROUP BY Destination;


-- 45. Number of bookings for each Agent where Destination is 'Dubai' or 'Islamabad'
SELECT Agent, COUNT(*) AS 'Number of Bookings'
FROM Bookings
WHERE Destination IN ('Dubai', 'Islamabad')
GROUP BY Agent
ORDER BY COUNT(*) ASC;


-- 46. Average booking amount for each Destination where Amount > 100000 (Average > 130000)
SELECT Destination, AVG(Amount) AS 'Average Amount'
FROM Bookings
WHERE Amount > 100000
GROUP BY Destination
HAVING AVG(Amount) > 130000
ORDER BY AVG(Amount) DESC;


-- 47. Maximum booking amount for each TravelType
SELECT TravelType, MAX(Amount) AS 'Maximum Amount'
FROM Bookings
GROUP BY TravelType;


-- 48. Total travelers for specific customers ('Ali', 'Hamza', 'Ayesha', 'Hina')
SELECT Agent, SUM(Travelers) AS 'Total Travelers'
FROM Bookings
WHERE CustomerName IN ('Ali', 'Hamza', 'Ayesha', 'Hina')
GROUP BY Agent;


-- 49. Minimum booking amount for each Agent where Amount > 100000 AND Travelers > 2
SELECT Agent, MIN(Amount) AS 'Minimum Amount'
FROM Bookings
WHERE Amount > 100000 AND Travelers > 2
GROUP BY Agent
ORDER BY MIN(Amount) ASC;


-- 50. Total booking amount for TravelType where Destination 'Dubai' or 'Karachi' (Total > 500000)
SELECT TravelType, SUM(Amount) AS 'Total Amount'
FROM Bookings
WHERE Destination IN ('Dubai', 'Karachi')
GROUP BY TravelType
HAVING SUM(Amount) > 500000
ORDER BY SUM(Amount) DESC;


-- 51. Number of bookings for each TravelType
SELECT TravelType, COUNT(*) AS 'Number of Bookings'
FROM Bookings
GROUP BY TravelType;


-- 52. Average travelers for each Destination where TravelType = 'Domestic' OR Amount > 200000
SELECT Destination, CAST(AVG(Travelers * 1.0) AS DECIMAL(10,2)) AS 'Average Travelers'
FROM Bookings
WHERE TravelType = 'Domestic' OR Amount > 200000
GROUP BY Destination;