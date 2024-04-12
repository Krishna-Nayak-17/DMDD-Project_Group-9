 USE WarehouseManagement;

CREATE NONCLUSTERED INDEX IX_ProductName
ON dbo.Product (ProductName)


CREATE NONCLUSTERED INDEX IX_EmployeeName
ON dbo.Employee (FirstName)


CREATE NONCLUSTERED INDEX IX_TrackingNumber
ON dbo.Shipment (TrackingNumber)


-- Queries to retrieve information based on non-clustered index
SELECT ProductID, ProductName, Manufacturer, [Description], UnitPrice, CategoryID, SupplierID
FROM dbo.Product
WHERE ProductName LIKE 'P%' OR ProductName LIKE 'S%';

SELECT EmployeeID, FirstName, LastName, Salary, ContactNumber
FROM Employee
WHERE FirstName LIKE 'S%' OR FirstName LIKE 'A%';

SELECT ShipmentID, TrackingNumber, ShipmentDate, CarrierType
FROM Shipment
WHERE TrackingNumber LIKE 'T%';





