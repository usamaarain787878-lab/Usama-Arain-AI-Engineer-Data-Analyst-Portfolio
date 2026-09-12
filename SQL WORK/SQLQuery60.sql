CREATE DATABASE TransportDB;

USE TransportDB;

CREATE TABLE Vehicle (
    VehicleID int,
    VehicleName varchar(20),
    Company varchar(20),
    FuelType varchar(20),
    Color varchar(20)
);

INSERT INTO Vehicle (VehicleID, VehicleName, Company, FuelType, Color) VALUES 
(1, 'Corolla', 'Toyota', 'Petrol', 'White'),
(2, 'Civic', 'Honda', 'Petrol', 'Black'),
(3, 'City', 'Honda', 'Petrol', 'Silver'),
(4, 'Alto', 'Suzuki', 'Petrol', 'White'),
(5, 'Cultus', 'Suzuki', 'Petrol', 'Red'),
(6, 'Sportage', 'Kia', 'Diesel', 'Grey'),
(7, 'Tucson', 'Hyundai', 'Diesel', 'Blue'),
(8, 'Elantra', 'Hyundai', 'Petrol', 'Black'),
(9, 'Fortuner', 'Toyota', 'Diesel', 'White'),
(10, 'Yaris', 'Toyota', 'Petrol', 'Silver'),
(11, 'Picanto', 'Kia', 'Petrol', 'Red'),
(12, 'Swift', 'Suzuki', 'Petrol', 'Blue'),
(13, 'Revo', 'Toyota', 'Diesel', 'Grey'),
(14, 'Hilux', 'Toyota', 'Diesel', 'Black'),
(15, 'Sonet', 'Kia', 'Petrol', 'White');

SELECT * FROM Vehicle WHERE VehicleName LIKE 'C%';

SELECT * FROM Vehicle WHERE VehicleName LIKE '%a';

SELECT * FROM Vehicle WHERE VehicleName LIKE '%tu%';

SELECT * FROM Vehicle WHERE Company LIKE 'T%';

SELECT * FROM Vehicle WHERE FuelType LIKE '%rol';

SELECT * FROM Vehicle WHERE Color LIKE '%la%';

SELECT * FROM Vehicle WHERE VehicleName LIKE 'S%';

SELECT * FROM Vehicle WHERE Company LIKE '%i';

SELECT * FROM Vehicle WHERE VehicleName LIKE '____';

SELECT * FROM Vehicle WHERE VehicleName LIKE '_____';

SELECT * FROM Vehicle WHERE VehicleName LIKE 'C____';

SELECT * FROM Vehicle WHERE VehicleName LIKE '_i%';

SELECT * FROM Vehicle WHERE Company LIKE '___';

SELECT * FROM Vehicle WHERE Color LIKE '_____';

SELECT * FROM Vehicle WHERE VehicleName LIKE 'C%' OR VehicleName LIKE 'S%' OR VehicleName LIKE 'Y%';

SELECT * FROM Vehicle WHERE VehicleName LIKE '[A-H]%';

SELECT * FROM Vehicle WHERE Company LIKE '[HKT]%';

SELECT * FROM Vehicle WHERE Color LIKE '[BW]%';

SELECT * FROM Vehicle WHERE VehicleName LIKE '_[iou]%';

SELECT * FROM Vehicle WHERE Company LIKE '[H-T]%';

SELECT * FROM Vehicle WHERE FuelType LIKE '[PD]%';

SELECT * FROM Vehicle WHERE VehicleName NOT LIKE 'C%';

SELECT * FROM Vehicle WHERE VehicleName NOT LIKE 'A%' AND VehicleName NOT LIKE 'C%' AND VehicleName NOT LIKE 'S%';

SELECT * FROM Vehicle WHERE Company NOT LIKE 'T%';

SELECT * FROM Vehicle WHERE Color NOT LIKE 'B%';

SELECT * FROM Vehicle WHERE VehicleName NOT LIKE '[A-F]%';

SELECT * FROM Vehicle WHERE Company NOT LIKE '[K-Z]%';

SELECT * FROM Vehicle WHERE FuelType NOT LIKE 'P%';

SELECT * FROM Vehicle WHERE VehicleName LIKE 'S_%';

SELECT * FROM Vehicle WHERE VehicleName LIKE '_o%a';

SELECT * FROM Vehicle WHERE Company LIKE 'T_%';

SELECT * FROM Vehicle WHERE Color LIKE 'B_%';

SELECT * FROM Vehicle WHERE VehicleName LIKE '[C-H]%x';

SELECT * FROM Vehicle WHERE Company NOT LIKE 'T%' AND Company LIKE '%a';

UPDATE Vehicle SET Color = 'Green' WHERE VehicleName LIKE 'C%';

UPDATE Vehicle SET FuelType = 'Hybrid' WHERE VehicleName LIKE '[S-Z]%';

UPDATE Vehicle SET Company = 'MG' WHERE VehicleName NOT LIKE 'C%';

UPDATE Vehicle SET Color = 'Silver' WHERE Company LIKE 'H%' OR Company LIKE 'K%';

UPDATE Vehicle SET FuelType = 'Electric' WHERE VehicleName LIKE '_i%';

DELETE FROM Vehicle WHERE VehicleName LIKE 'A%';

DELETE FROM Vehicle WHERE VehicleName LIKE 'C%' OR VehicleName LIKE 'S%' OR VehicleName LIKE 'Y%';

DELETE FROM Vehicle WHERE Company NOT LIKE 'T%';

DELETE FROM Vehicle WHERE VehicleName LIKE '[A-F]%';

DELETE FROM Vehicle WHERE Color LIKE 'B%';

DELETE FROM Vehicle WHERE VehicleName LIKE '_____';

DELETE FROM Vehicle WHERE VehicleName LIKE 'S_%';