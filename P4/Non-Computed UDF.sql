USE WarehouseManagement;

--Top Selling Products by category--
GO
CREATE FUNCTION GetTopSellingProductsByCategory(@CategoryID INT, @TopN INT)
RETURNS TABLE
AS
RETURN (
    SELECT TOP (@TopN) p.ProductID, p.ProductName, SUM(od.QuantityOrdered) AS TotalQuantity
    FROM Product p
    JOIN OrderDetail od ON p.ProductID = od.ProductID
    WHERE p.CategoryID = @CategoryID
    GROUP BY p.ProductID, p.ProductName
    ORDER BY TotalQuantity DESC
);

GO
SELECT * FROM dbo.GetTopSellingProductsByCategory(4, 3);

GO
--Delivery efficiency of truck--

CREATE FUNCTION CalculateTruckDeliveryEfficiency()
RETURNS TABLE
AS
RETURN (
    SELECT
        'Truck' AS CarrierType,
        COUNT(*) AS TotalShipments,
        SUM(CASE WHEN s.ShipmentDate <= t.ExpectedDeliveryDate THEN 1 ELSE 0 END) AS OnTimeShipments,
        CAST(SUM(CASE WHEN s.ShipmentDate <= t.ExpectedDeliveryDate THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) AS EfficiencyRatio
    FROM Shipment s
    INNER JOIN Truck t ON s.ShipmentID = t.ShipmentID
);

GO
SELECT * FROM dbo.CalculateTruckDeliveryEfficiency();

GO
--Calculating total order value based on order ID --

CREATE FUNCTION CalculateTotalOrderValue(@OrderID INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @TotalValue DECIMAL(10,2) = 0
    SELECT @TotalValue = SUM(od.UnitPrice * od.QuantityOrdered)
    FROM OrderDetail od
    WHERE od.OrderID = @OrderID
    RETURN @TotalValue
END

GO
SELECT dbo.CalculateTotalOrderValue(19) AS TotalOrderValue;