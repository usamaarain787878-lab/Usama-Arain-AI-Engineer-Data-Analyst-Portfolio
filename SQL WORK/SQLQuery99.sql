-- Database and Table Creation
CREATE DATABASE HotelDB00;
USE HotelDB;

CREATE TABLE Bookings (
    BookingID INT,
    GuestName VARCHAR(50),
    RoomNumber INT,
    CheckinDate DATE,
    CheckOutDate DATE
);

-- Insert Records
INSERT INTO Bookings (BookingID, GuestName, RoomNumber, CheckinDate, CheckOutDate) VALUES
(1, 'Ali', 101, '2026-01-05', '2026-01-08'),
(2, 'Ahmed', 205, '2026-02-12', '2026-02-15'),
(3, 'Sara', 302, '2026-03-18', '2026-03-22'),
(4, 'Ayesha', 104, '2026-04-10', '2026-04-14'),
(5, 'Hamza', 210, '2026-05-25', '2026-05-29'),
(6, 'Talha', 305, '2026-06-08', '2026-06-12'),
(7, 'Hassan', 108, '2026-07-15', '2026-07-20'),
(8, 'Zainab', 215, '2026-08-22', '2026-08-26'),
(9, 'Usman', 310, '2026-09-05', '2026-09-09'),
(10, 'Maryam', 112, '2025-10-18', '2025-10-22');

-- 1. Write a SQL statement to display all bookings where the CheckinDate month is March.
SELECT * FROM Bookings WHERE MONTH(CheckinDate) = 3;

-- 2. Write a SQL statement to display all bookings where the CheckinDate year is 2026.
SELECT * FROM Bookings WHERE YEAR(CheckinDate) = 2026;

-- 3. Write a SQL statement to display all bookings where the CheckOutDate month is August.
SELECT * FROM Bookings WHERE MONTH(CheckOutDate) = 8;

-- 4. Write a SQL statement to display all bookings where the CheckinDate quarter is 2.
SELECT * FROM Bookings WHERE DATEPART(quarter, CheckinDate) = 2;

-- 5. Write a SQL statement to display all bookings where the CheckinDate day is greater than 15.
SELECT * FROM Bookings WHERE DAY(CheckinDate) > 15;

-- 6. Write a SQL statement to display all bookings where the CheckinDate month is September.
SELECT * FROM Bookings WHERE MONTH(CheckinDate) = 9;

-- 7. Write a SQL statement to display all bookings where the CheckinDate month is April.
SELECT * FROM Bookings WHERE MONTH(CheckinDate) = 4;

-- 8. Write a SQL statement to display all bookings where the CheckinDate year is 2025.
SELECT * FROM Bookings WHERE YEAR(CheckinDate) = 2025;

-- 9. Write a SQL statement to display all bookings where the CheckinDate day is less than 15.
SELECT * FROM Bookings WHERE DAY(CheckinDate) < 15;

-- 10. Write a SQL statement to display all bookings where the CheckinDate month is April.
SELECT * FROM Bookings WHERE MONTH(CheckinDate) = 4;

-- 11. Write a SQL statement to display all bookings where the CheckinDate day is 10.
SELECT * FROM Bookings WHERE DAY(CheckinDate) = 10;

-- 12. Write a SQL statement to display all bookings where the CheckOut Date day is 20.
SELECT * FROM Bookings WHERE DAY(CheckOutDate) = 20;