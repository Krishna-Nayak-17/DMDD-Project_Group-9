USE WarehouseManagement

GO

CREATE VIEW CustomerOrderDetails AS
SELECT 
    c.CustomerName, 
    c.ContactInfo, 
    c.City, 
    c.[State], 
    o.OrderID, 
    o.OrderDate, 
    o.[Status], 
    s.ShipmentDate, 
    s.CarrierType, 
    s.TrackingNumber
FROM Customer c
JOIN [Order] o ON c.CustomerID = o.StoreID 
JOIN Shipment s ON o.OrderID = s.OrderID;

GO

select * from CustomerOrderDetails

GO
CREATE VIEW ProductInventoryStatus AS
SELECT 
    p.ProductName, 
    p.Manufacturer, 
    i.QuantityOnHand, 
    i.ReorderPoint, 
    i.LastRestockedDate, 
    s.StoreName, 
    s.City, 
    s.[State]
FROM Product p
JOIN Inventory i ON p.ProductID = i.ProductID
JOIN Store s ON i.StoreID = s.StoreID;

GO

select * from ProductInventoryStatus

GO

CREATE VIEW SupplierProductPerformance AS
SELECT 
    sup.SupplierName, 
    p.ProductName, 
    AVG(pr.Rating) AS AverageRating, 
    SUM(od.QuantityOrdered) AS TotalUnitsSold
FROM Supplier sup
JOIN Product p ON sup.SupplierID = p.SupplierID
JOIN OrderDetail od ON p.ProductID = od.ProductID
JOIN ProductReview pr ON p.ProductID = pr.ProductID
GROUP BY sup.SupplierName, p.ProductName;

GO

select * FROM SupplierProductPerformance