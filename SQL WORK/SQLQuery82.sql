-- Safe Table Reset (Prevents Msg 2714 error)
IF OBJECT_ID('ProductWarranty', 'U') IS NOT NULL
    DROP TABLE ProductWarranty;

-- ==========================================
-- 1. Create ProductWarranty Table
-- ==========================================
CREATE TABLE ProductWarranty (
    WarrantyID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    PurchaseDate DATE,
    WarrantyEndDate DATE
);

-- ==========================================
-- 2. Insert Initial Records
-- ==========================================
INSERT INTO ProductWarranty (WarrantyID, ProductName, PurchaseDate, WarrantyEndDate) VALUES
(1, 'Laptop', '2025-01-15', '2026-01-15'),
(2, 'Mobile', '2025-03-10', '2027-03-10'),
(3, 'Printer', '2025-05-20', '2026-05-20'),
(4, 'Monitor', '2025-07-05', '2026-07-05'),
(5, 'Keyboard', '2025-08-12', '2025-11-12'),
(6, 'Mouse', '2025-09-18', '2025-12-18'),
(7, 'Tablet', '2025-10-25', '2026-10-25'),
(8, 'Headphone', '2025-11-10', '2026-02-10'),
(9, 'Webcam', '2025-12-01', '2026-06-01'),
(10, 'Smartwatch', '2026-01-20', '2027-01-20');

-- ==========================================
-- Date Calculation Queries (Tasks 1 to 8)
-- ==========================================
SELECT DATEADD(day, 10, GETDATE()) AS DateAfter10Days;
SELECT DATEADD(day, 30, GETDATE()) AS DateAfter30Days;
SELECT DATEADD(day, -15, GETDATE()) AS DateBefore15Days;
SELECT DATEADD(month, 3, GETDATE()) AS DateAfter3Months;
SELECT DATEADD(month, 6, GETDATE()) AS DateAfter6Months;
SELECT DATEADD(year, 1, GETDATE()) AS DateAfter1Year;
SELECT DATEADD(year, 2, GETDATE()) AS DateAfter2Years;
SELECT DATEADD(year, -1, GETDATE()) AS DateBefore1Year;

-- ==========================================
-- Insert New Products (Tasks 9 to 13)
-- ==========================================
INSERT INTO ProductWarranty (WarrantyID, ProductName, PurchaseDate, WarrantyEndDate)
VALUES (11, 'Camera', GETDATE(), DATEADD(year, 1, GETDATE()));

INSERT INTO ProductWarranty (WarrantyID, ProductName, PurchaseDate, WarrantyEndDate)
VALUES (12, 'Speaker', GETDATE(), DATEADD(year, 2, GETDATE()));

INSERT INTO ProductWarranty (WarrantyID, ProductName, PurchaseDate, WarrantyEndDate)
VALUES (13, 'Router', GETDATE(), DATEADD(month, 6, GETDATE()));

INSERT INTO ProductWarranty (WarrantyID, ProductName, PurchaseDate, WarrantyEndDate)
VALUES (14, 'USB Drive', GETDATE(), DATEADD(day, 90, GETDATE()));

INSERT INTO ProductWarranty (WarrantyID, ProductName, PurchaseDate, WarrantyEndDate)
VALUES (15, 'Power Bank', GETDATE(), DATEADD(day, 30, GETDATE()));

-- ==========================================
-- Update Statements (Tasks 14 to 20)
-- ==========================================
UPDATE ProductWarranty SET PurchaseDate = GETDATE() WHERE ProductName = 'Laptop';
UPDATE ProductWarranty SET WarrantyEndDate = DATEADD(year, 1, GETDATE()) WHERE ProductName = 'Laptop';
UPDATE ProductWarranty SET WarrantyEndDate = DATEADD(year, 2, GETDATE()) WHERE ProductName = 'Mobile';
UPDATE ProductWarranty SET WarrantyEndDate = DATEADD(month, 6, GETDATE()) WHERE ProductName = 'Printer';
UPDATE ProductWarranty SET WarrantyEndDate = DATEADD(day, 90, GETDATE()) WHERE ProductName = 'Monitor';

UPDATE ProductWarranty 
SET PurchaseDate = GETDATE(), WarrantyEndDate = DATEADD(month, 3, GETDATE()) 
WHERE ProductName = 'Keyboard';

UPDATE ProductWarranty 
SET PurchaseDate = GETDATE(), WarrantyEndDate = DATEADD(day, 30, GETDATE()) 
WHERE ProductName = 'Mouse';

-- ==========================================
-- Display Queries (Tasks 21 & 22)
-- ==========================================
SELECT DATEADD(day, -7, GETDATE()) AS SevenDaysBefore, DATEADD(day, 7, GETDATE()) AS SevenDaysAfter;
SELECT GETDATE() AS Today, DATEADD(day, 30, GETDATE()) AS After30Days, DATEADD(day, -30, GETDATE()) AS Before30Days;

-- ==========================================
-- More Updates & Inserts (Tasks 23 to 30)
-- ==========================================
UPDATE ProductWarranty SET WarrantyEndDate = DATEADD(year, 1, GETDATE()) WHERE WarrantyID = 7;

-- Task 24: Updates ALL products warranty
UPDATE ProductWarranty SET WarrantyEndDate = DATEADD(year, 2, GETDATE());

INSERT INTO ProductWarranty (WarrantyID, ProductName, PurchaseDate, WarrantyEndDate)
VALUES (16, 'Gaming Console', GETDATE(), DATEADD(year, 3, GETDATE()));

INSERT INTO ProductWarranty (WarrantyID, ProductName, PurchaseDate, WarrantyEndDate)
VALUES (17, 'Air Conditioner', GETDATE(), DATEADD(year, 5, GETDATE()));

UPDATE ProductWarranty SET WarrantyEndDate = DATEADD(month, 18, GETDATE()) WHERE ProductName = 'Smartwatch';

UPDATE ProductWarranty 
SET PurchaseDate = GETDATE(), WarrantyEndDate = DATEADD(day, 180, GETDATE()) 
WHERE ProductName = 'Webcam';

SELECT GETDATE() AS Today, DATEADD(month, 6, GETDATE()) AS After6Months, DATEADD(year, 1, GETDATE()) AS After1Year;

INSERT INTO ProductWarranty (WarrantyID, ProductName, PurchaseDate, WarrantyEndDate)
VALUES (18, 'Smart TV', GETDATE(), DATEADD(year, 2, GETDATE()));

-- View Final Result
SELECT * FROM ProductWarranty;