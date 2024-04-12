USE WarehouseManagement
GO

--Procedure to add new customer to the Customer Table
CREATE PROCEDURE AddNewCustomer 
    @CustomerID INT, 
    @CustomerName NVARCHAR(100), 
    @Street NVARCHAR(100), 
    @City NVARCHAR(50), 
    @State NVARCHAR(2), 
    @ZipCode NVARCHAR(10), 
    @ContactInfo BIGINT
AS
BEGIN
    INSERT INTO Customer (CustomerID, CustomerName, Street, City, [State], ZipCode, ContactInfo)
    VALUES (@CustomerID, @CustomerName, @Street, @City, @State, @ZipCode, @ContactInfo)
END
GO

EXEC AddNewCustomer 
    @CustomerID = 21, 
    @CustomerName = 'Jane Doe', 
    @Street = '456 Elm St', 
    @City = 'Springfield', 
    @State = 'SP', 
    @ZipCode = '12345', 
    @ContactInfo = 9876543210
GO

SELECT * FROM Customer
GO

--SP to the Update the Customer Contact details
CREATE PROCEDURE UpdateCustomerContact
    @CustomerID INT,
    @NewContactInfo BIGINT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Customer WHERE CustomerID = @CustomerID)
    BEGIN
        UPDATE Customer
        SET ContactInfo = @NewContactInfo
        WHERE CustomerID = @CustomerID
    END
    ELSE
    BEGIN
        PRINT 'CustomerID does not exist.'
    END
END
GO
EXEC UpdateCustomerContact @CustomerID = 1, @NewContactInfo = 1234567849;
GO


--SP to get the Planogram Information for a Product
CREATE PROCEDURE GetProductPlanogramInfo
    @ProductName NVARCHAR(100)
AS
BEGIN
    SELECT p.ProductName, i.InventoryID, pl.WarehouseZone, pl.AisleNumber, pl.ShelfNumber
    FROM Product p
    INNER JOIN Inventory i ON p.ProductID = i.ProductID
    INNER JOIN Planogram pl ON i.PlanogramID = pl.PlanogramID
    WHERE p.ProductName = @ProductName
END
GO

EXEC GetProductPlanogramInfo @ProductName = N'Automotive Tool G'
GO

DROP PROCEDURE IF EXISTS GetCustomersByCity;

