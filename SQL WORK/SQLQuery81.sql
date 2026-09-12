-- Safe Table Drop (Prevents Msg 2714 error)
IF OBJECT_ID('Subscription', 'U') IS NOT NULL
    DROP TABLE Subscription;

-- 1. Create table named Subscription
CREATE TABLE Subscription (
    SubscriptionID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    PlanName VARCHAR(30),
    StartDate DATE,
    EndDate DATE,
    Amount INT
);

-- 2. Insert a new subscription for Ali
INSERT INTO Subscription (SubscriptionID, CustomerName, PlanName, StartDate, EndDate, Amount)
VALUES (1, 'Ali', 'Basic', GETDATE(), GETDATE(), 3000);

-- 3. Insert a new subscription for Sara
INSERT INTO Subscription (SubscriptionID, CustomerName, PlanName, StartDate, EndDate, Amount)
VALUES (2, 'Sara', 'Premium', GETDATE(), DATEADD(day, 30, GETDATE()), 8000);

-- 4. Insert a new subscription for Ahmed
INSERT INTO Subscription (SubscriptionID, CustomerName, PlanName, StartDate, EndDate, Amount)
VALUES (3, 'Ahmed', 'Standard', GETDATE(), DATEADD(month, 3, GETDATE()), 6000);

-- 5. Display today's date and time
SELECT GETDATE() AS CurrentDateTime;

-- 6. Display today's date and the date 7 days from today
SELECT GETDATE() AS CurrentDate, DATEADD(day, 7, GETDATE()) AS DateAfter7Days;

-- 7. Display today's date and the date 30 days before today
SELECT GETDATE() AS CurrentDate, DATEADD(day, -30, GETDATE()) AS Date30DaysBefore;

-- 8. Display today's date and the date 6 months from today
SELECT GETDATE() AS CurrentDate, DATEADD(month, 6, GETDATE()) AS DateAfter6Months;

-- 9. Display today's date and the date 1 year before today
SELECT GETDATE() AS CurrentDate, DATEADD(year, -1, GETDATE()) AS Date1YearBefore;

-- 10. Update Ali's EndDate to be 30 days after today's date
UPDATE Subscription
SET EndDate = DATEADD(day, 30, GETDATE())
WHERE CustomerName = 'Ali';

-- 11. Update Sara's EndDate to be 3 months after today's date
UPDATE Subscription
SET EndDate = DATEADD(month, 3, GETDATE())
WHERE CustomerName = 'Sara';

-- 12. Update Ahmed's StartDate to today's date
UPDATE Subscription
SET StartDate = GETDATE()
WHERE CustomerName = 'Ahmed';

-- 13. Update the EndDate of all subscriptions to 1 year from today
UPDATE Subscription
SET EndDate = DATEADD(year, 1, GETDATE());

-- Final Output Check
SELECT * FROM Subscription;