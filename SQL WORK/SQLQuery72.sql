-- 1. Create a database named HotelDB
CREATE DATABASE HotelDB;
USE HotelDB;

-- 2. Create a table named Booking
CREATE TABLE Booking (
    BookingID INT,
    GuestName VARCHAR(50),
    RoomType VARCHAR(30),
    City VARCHAR(30),
    StayType VARCHAR(30),
    Nights INT,
    RoomCharge INT,
    Receptionist VARCHAR(50)
);

-- 3. Insert records into the Booking table
INSERT INTO Booking (BookingID, GuestName, RoomType, City, StayType, Nights, RoomCharge, Receptionist) VALUES
(1, 'Ali', 'Deluxe', 'Hyderabad', 'Business', 3, 8000, 'Ahmed'),
(2, 'Sara', 'Standard', 'Karachi', 'Family', 5, 5000, 'Bilal'),
(3, 'Hamza', 'Suite', 'Lahore', 'Business', 4, 12000, 'Sana'),
(4, 'Hina', 'Deluxe', 'Karachi', 'Family', 2, 8000, 'Bilal'),
(5, 'Usman', 'Standard', 'Hyderabad', 'Business', 6, 5000, 'Ahmed'),
(6, 'Ayesha', 'Suite', 'Lahore', 'Family', 3, 12000, 'Sana'),
(7, 'Zain', 'Deluxe', 'Hyderabad', 'Family', 5, 8000, 'Ahmed'),
(8, 'Maham', 'Standard', 'Karachi', 'Business', 4, 5000, 'Bilal'),
(9, 'Imran', 'Suite', 'Lahore', 'Business', 6, 12000, 'Sana'),
(10, 'Fatima', 'Deluxe', 'Karachi', 'Business', 4, 8000, 'Bilal'),
(11, 'Saad', 'Standard', 'Hyderabad', 'Family', 2, 5000, 'Ahmed'),
(12, 'Maryam', 'Suite', 'Lahore', 'Family', 5, 12000, 'Sana');

-- 4. Display each City along with the total number of nights booked
SELECT City, SUM(Nights) AS TotalNights
FROM Booking
GROUP BY City;

-- 5. Display each City along with total nights, where total nights > 15
SELECT City, SUM(Nights) AS TotalNights
FROM Booking
GROUP BY City
HAVING SUM(Nights) > 15;

-- 6. Display each Room Type along with the total number of nights booked
SELECT RoomType, SUM(Nights) AS TotalNights
FROM Booking
GROUP BY RoomType;

-- 7. Display each Room Type along with total nights, where total nights > 15
SELECT RoomType, SUM(Nights) AS TotalNights
FROM Booking
GROUP BY RoomType
HAVING SUM(Nights) > 15;

-- 8. Display each RoomType along with the total room charges
SELECT RoomType, SUM(RoomCharge) AS TotalCharges
FROM Booking
GROUP BY RoomType;

-- 9. Display each RoomType along with total charges, where total charges > 30000
SELECT RoomType, SUM(RoomCharge) AS TotalCharges
FROM Booking
GROUP BY RoomType
HAVING SUM(RoomCharge) > 30000;

-- 10. Display each Receptionist along with the total number of bookings handled
SELECT Receptionist, COUNT(*) AS BookingCount
FROM Booking
GROUP BY Receptionist;

-- 11. Display each Receptionist along with total bookings, where bookings > 3
SELECT Receptionist, COUNT(*) AS BookingCount
FROM Booking
GROUP BY Receptionist
HAVING COUNT(*) > 3;

-- 12. Display each Stay Type along with the total number of nights booked
SELECT StayType, SUM(Nights) AS TotalNights
FROM Booking
GROUP BY StayType;

-- 13. Display each StayType along with total nights, where total nights > 20
SELECT StayType, SUM(Nights) AS TotalNights
FROM Booking
GROUP BY StayType
HAVING SUM(Nights) > 20;

-- 14. Display each City along with the total number of bookings
SELECT City, COUNT(*) AS BookingCount
FROM Booking
GROUP BY City;

-- 15. Display each City along with total bookings, where bookings > 3
SELECT City, COUNT(*) AS BookingCount
FROM Booking
GROUP BY City
HAVING COUNT(*) > 3;

-- 16. Display each RoomType along with the average number of nights booked
SELECT RoomType, CAST(AVG(Nights * 1.0) AS DECIMAL(10,2)) AS "Average Nights"
FROM Booking
GROUP BY RoomType;

-- 17. Display each RoomType along with average nights, where average nights > 4
SELECT RoomType, CAST(AVG(Nights * 1.0) AS DECIMAL(10,2)) AS "Average Nights"
FROM Booking
GROUP BY RoomType
HAVING AVG(Nights * 1.0) > 4;

-- 18. Display each City along with the total room charges
SELECT City, SUM(RoomCharge) AS TotalCharges
FROM Booking
GROUP BY City;

-- 19. Display each City along with total charges, where total charges > 25000
SELECT City, SUM(RoomCharge) AS TotalCharges
FROM Booking
GROUP BY City
HAVING SUM(RoomCharge) > 25000;

-- 20. Display each Stay Type along with the average room charge
SELECT StayType, CAST(AVG(RoomCharge * 1.0) AS DECIMAL(10,2)) AS AverageCharge
FROM Booking
GROUP BY StayType;

-- 21. Display each StayType along with average room charge, where average charge > 8000
SELECT StayType, CAST(AVG(RoomCharge * 1.0) AS DECIMAL(10,2)) AS AverageCharge
FROM Booking
GROUP BY StayType
HAVING AVG(RoomCharge * 1.0) > 8000;

-- 22. Display each Receptionist along with the total number of nights booked
SELECT Receptionist, SUM(Nights) AS TotalNights
FROM Booking
GROUP BY Receptionist;

-- 23. Display each Receptionist along with total nights, where total nights > 15
SELECT Receptionist, SUM(Nights) AS TotalNights
FROM Booking
GROUP BY Receptionist
HAVING SUM(Nights) > 15;

-- 24. Display each Receptionist along with the total room charges generated
SELECT Receptionist, SUM(RoomCharge) AS TotalCharges
FROM Booking
GROUP BY Receptionist;

-- 25. Display each Receptionist along with total charges, where total charges > 30000
SELECT Receptionist, SUM(RoomCharge) AS TotalCharges
FROM Booking
GROUP BY Receptionist
HAVING SUM(RoomCharge) > 30000;