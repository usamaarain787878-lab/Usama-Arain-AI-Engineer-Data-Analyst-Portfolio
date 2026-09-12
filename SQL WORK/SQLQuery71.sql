-- 1. Create a database named TransportDB[span_1](start_span)[span_1](end_span)
CREATE DATABASE TransportDB12;
USE TransportDB12;

-- 2. Create a table named Trip[span_2](start_span)[span_2](end_span)
CREATE TABLE Trip (
    TripID INT,
    DriverName VARCHAR(50),
    VehicleType VARCHAR(30),
    Route VARCHAR(40),
    TripCategory VARCHAR(30),
    Passengers INT,
    Fare INT,
    Supervisor VARCHAR(50)
);

-- 3. Insert records into the Trip table[span_3](start_span)[span_3](end_span)
INSERT INTO Trip VALUES 
(1, 'Ahmed', 'Bus', 'Hyderabad', 'Local', 35, 500, 'Salman'),
(2, 'Bilal', 'Van', 'Karachi', 'Intercity', 12, 800, 'Nadia'),
(3, 'Sana', 'Bus', 'Lahore', 'Intercity', 40, 1000, 'Farhan'),
(4, 'Ahmed', 'Van', 'Karachi', 'Local', 15, 600, 'Salman'),
(5, 'Bilal', 'Bus', 'Hyderabad', 'Local', 30, 500, 'Nadia'),
(6, 'Sana', 'Coach', 'Lahore', 'Tourist', 45, 1500, 'Farhan'),
(7, 'Ahmed', 'Bus', 'Karachi', 'Intercity', 38, 900, 'Salman'),
(8, 'Bilal', 'Van', 'Hyderabad', 'Tourist', 10, 1200, 'Nadia'),
(9, 'Sana', 'Bus', 'Lahore', 'Local', 32, 500, 'Farhan'),
(10, 'Ahmed', 'Coach', 'Karachi', 'Tourist', 25, 1500, 'Salman'),
(11, 'Bilal', 'Bus', 'Hyderabad', 'Intercity', 36, 900, 'Nadia'),
(12, 'Sana', 'Van', 'Lahore', 'Local', 14, 600, 'Farhan');

-- 4. Display each Route along with the total number of passengers[span_4](start_span)[span_4](end_span)
SELECT Route, SUM(Passengers) AS TotalPassengers
FROM Trip
GROUP BY Route;

-- 5. Route with total passengers greater than 100[span_5](start_span)[span_5](end_span)
SELECT Route, SUM(Passengers) AS TotalPassengers
FROM Trip
GROUP BY Route
HAVING SUM(Passengers) > 100;

-- 6. Display each VehicleType along with the total number of passengers[span_6](start_span)[span_6](end_span)
SELECT VehicleType, SUM(Passengers) AS TotalPassengers
FROM Trip
GROUP BY VehicleType;

-- 7. VehicleType with total passengers greater than 60[span_7](start_span)[span_7](end_span)
SELECT VehicleType, SUM(Passengers) AS TotalPassengers
FROM Trip
GROUP BY VehicleType
HAVING SUM(Passengers) > 60;

-- 8. Display each TripCategory along with the total number of passengers[span_8](start_span)[span_8](end_span)
SELECT TripCategory, SUM(Passengers) AS TotalPassengers
FROM Trip
GROUP BY TripCategory;

-- 9. TripCategory with total passengers greater than 100[span_9](start_span)[span_9](end_span)
SELECT TripCategory, SUM(Passengers) AS TotalPassengers
FROM Trip
GROUP BY TripCategory
HAVING SUM(Passengers) > 100;

-- 10. Display each DriverName along with the total number of passengers[span_10](start_span)[span_10](end_span)
SELECT DriverName, SUM(Passengers) AS TotalPassengers
FROM Trip
GROUP BY DriverName;

-- 11. DriverName with total passengers greater than 100[span_11](start_span)[span_11](end_span)
SELECT DriverName, SUM(Passengers) AS TotalPassengers
FROM Trip
GROUP BY DriverName
HAVING SUM(Passengers) > 100;

-- 12. Display each Route along with the total fare collected[span_12](start_span)[span_12](end_span)
SELECT Route, SUM(Passengers * Fare) AS TotalFare
FROM Trip
GROUP BY Route;

-- 13. Route with total fare greater than 75000[span_13](start_span)[span_13](end_span)
SELECT Route, SUM(Passengers * Fare) AS TotalFare
FROM Trip
GROUP BY Route
HAVING SUM(Passengers * Fare) > 75000;

-- 14. Display each VehicleType along with the total fare collected[span_14](start_span)[span_14](end_span)
SELECT VehicleType, SUM(Passengers * Fare) AS TotalFare
FROM Trip
GROUP BY VehicleType;

-- 15. VehicleType with total fare greater than 70000[span_15](start_span)[span_15](end_span)
SELECT VehicleType, SUM(Passengers * Fare) AS TotalFare
FROM Trip
GROUP BY VehicleType
HAVING SUM(Passengers * Fare) > 70000;

-- 16. Display each Supervisor along with the total number of passengers[span_16](start_span)[span_16](end_span)
SELECT Supervisor, SUM(Passengers) AS TotalPassengers
FROM Trip
GROUP BY Supervisor;

-- 17. Supervisor with total passengers greater than 100[span_17](start_span)[span_17](end_span)
SELECT Supervisor, SUM(Passengers) AS TotalPassengers
FROM Trip
GROUP BY Supervisor
HAVING SUM(Passengers) > 100;

-- 18. Display each TripCategory along with the average fare[span_18](start_span)[span_18](end_span)
SELECT TripCategory, AVG(Fare * 1.0) AS AverageFare
FROM Trip
GROUP BY TripCategory;

-- 19. TripCategory with average fare greater than 800[span_19](start_span)[span_19](end_span)
SELECT TripCategory, AVG(Fare * 1.0) AS AverageFare
FROM Trip
GROUP BY TripCategory
HAVING AVG(Fare * 1.0) > 800;

-- 20. Display each DriverName along with the total fare collected[span_20](start_span)[span_20](end_span)
SELECT DriverName, SUM(Passengers * Fare) AS TotalFare
FROM Trip
GROUP BY DriverName;

-- 21. DriverName with total fare greater than 85000[span_21](start_span)[span_21](end_span)
SELECT DriverName, SUM(Passengers * Fare) AS TotalFare
FROM Trip
GROUP BY DriverName
HAVING SUM(Passengers * Fare) > 85000;

-- 22. Display each VehicleType along with the number of trips[span_22](start_span)[span_22](end_span)
SELECT VehicleType, COUNT(*) AS TripCount
FROM Trip
GROUP BY VehicleType;

-- 23. VehicleType with more than 3 trips[span_23](start_span)[span_23](end_span)
SELECT VehicleType, COUNT(*) AS TripCount
FROM Trip
GROUP BY VehicleType
HAVING COUNT(*) > 3;

-- 24. Display each Route along with the number of trips[span_24](start_span)[span_24](end_span)
SELECT Route, COUNT(*) AS TripCount
FROM Trip
GROUP BY Route;

-- 25. Route with more than 3 trips[span_25](start_span)[span_25](end_span)
SELECT Route, COUNT(*) AS TripCount
FROM Trip
GROUP BY Route
HAVING COUNT(*) > 3;