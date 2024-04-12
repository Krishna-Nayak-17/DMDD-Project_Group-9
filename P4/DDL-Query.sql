CREATE DATABASE WarehouseManagement

USE WarehouseManagement

-- Customer Table
CREATE TABLE Customer (
    CustomerID INT NOT NULL,
    CustomerName VARCHAR(100) NOT NULL,
    Street VARCHAR(100),
    City VARCHAR(50) NOT NULL,
    [State] VARCHAR(50) NOT NULL,
    ZipCode VARCHAR(20) NOT NULL,
    ContactInfo BIGINT NOT NULL,
	CONSTRAINT PK_CustomerID PRIMARY KEY (CustomerID)
);

-- Employee Table
CREATE TABLE Employee (
    EmployeeID INT NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    ContactNumber BIGINT NOT NULL,
	CONSTRAINT PK_EmployeeID PRIMARY KEY (EmployeeID)
);

-- Order Table
CREATE TABLE [Order] (
    OrderID INT NOT NULL,
    OrderDate DATE NOT NULL,
    [Status] VARCHAR(50) NOT NULL CONSTRAINT CK_Status CHECK ([Status] IN ('Shipped', 'Pending', 'Cancelled', 'Delivered')),
    ShippedDate DATE,
	CONSTRAINT PK_Order PRIMARY KEY (OrderID)
);

-- OrderDetail Table
CREATE TABLE OrderDetail (
    OrderDetailID INT NOT NULL,
    QuantityOrdered INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
	CONSTRAINT PK_OrderDetailID PRIMARY KEY (OrderDetailID)
);

-- Payment Table
CREATE TABLE Payment (
    PaymentID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentType VARCHAR(50) NOT NULL CONSTRAINT CK_PaymentType CHECK (PaymentType IN ('BankTransfer', 'Card', 'PayPal')),
	CONSTRAINT PK_PaymentID PRIMARY KEY (PaymentID)
);

CREATE TABLE BankTransfer (     
	PaymentID INT NOT NULL,     
	BankAccountNumber NVARCHAR(255) NOT NULL,
	BankName VARCHAR(255) NOT NULL,
	RoutingNumber VARCHAR(255) NOT NULL,
	CONSTRAINT PK_BPaymentID PRIMARY KEY (PaymentID),
	CONSTRAINT FK_BPaymentID FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID) 
); 

-- Creating the Card table
CREATE TABLE Card (     
	PaymentID INT NOT NULL,     
	CardNumber NVARCHAR(255) NOT NULL,     
	CardHolderName VARCHAR(255) NOT NULL,     
	ExpirationDate DATE NOT NULL,     
	CVV VARCHAR(3) NOT NULL,
	CONSTRAINT PK_CPaymentID PRIMARY KEY (PaymentID),
	CONSTRAINT FK_CPaymentID FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID) 
); 

-- Creating the PayPal table
CREATE TABLE PayPal (     
	PaymentID INT NOT NULL,     
	PaypalAccountEmail VARCHAR(255) NOT NULL,
	CONSTRAINT PK_PPaymentID PRIMARY KEY (PaymentID),
	CONSTRAINT FK_PPaymentID FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID) 
);

-- Shipment Table
CREATE TABLE Shipment (
    ShipmentID INT NOT NULL,
    TrackingNumber VARCHAR(50) NOT NULL,
    ShipmentDate DATE NOT NULL,
    CarrierType VARCHAR(50) NOT NULL CONSTRAINT CK_CarrierType CHECK (CarrierType IN ('Plane', 'Ship', 'Truck')),
	CONSTRAINT PK_ShipmentID PRIMARY KEY (ShipmentID)
);

-- Creating the Plane table
CREATE TABLE Plane (
    ShipmentID INT NOT NULL,
    FlightNumber VARCHAR(255) NOT NULL,
    Airline VARCHAR(255) NOT NULL,
	CONSTRAINT PK_PShipmentID PRIMARY KEY (ShipmentID),
    CONSTRAINT FK_PShipmentID FOREIGN KEY (ShipmentID) REFERENCES Shipment(ShipmentID)
);
 
-- Creating the Ship table
CREATE TABLE Ship (
    ShipmentID INT NOT NULL,
    ShipName VARCHAR(255) NOT NULL,
    PortOfOrigin VARCHAR(255) NOT NULL,
    PortOfDestination VARCHAR(255) NOT NULL,
	CONSTRAINT PK_SShipmentID PRIMARY KEY (ShipmentID),
    CONSTRAINT FK_SShipmentID FOREIGN KEY (ShipmentID) REFERENCES Shipment(ShipmentID)
);
 
-- Creating the Truck table
CREATE TABLE Truck (
    ShipmentID INT NOT NULL,
    TruckLicensePlate VARCHAR(255) NOT NULL,
    DriverName VARCHAR(255) NOT NULL,
    ExpectedDeliveryDate DATE NOT NULL,
	CONSTRAINT PK_TShipmentID PRIMARY KEY (ShipmentID),
    CONSTRAINT FK_TShipmentID FOREIGN KEY (ShipmentID) REFERENCES Shipment(ShipmentID)
);

-- Product Table
CREATE TABLE Product (
    ProductID INT IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    Manufacturer VARCHAR(100) NOT NULL,
    [Description] VARCHAR(MAX),
    UnitPrice DECIMAL(10, 2) NOT NULL,
	CONSTRAINT PK_ProductID PRIMARY KEY (ProductID)
);

-- Inventory Table
CREATE TABLE Inventory (
    InventoryID INT NOT NULL,
    QuantityOnHand INT NOT NULL,
    ReorderPoint INT NOT NULL,
    LastRestockedDate DATE NOT NULL,
	CONSTRAINT PK_InventoryID PRIMARY KEY (InventoryID)
);

-- Store Table
CREATE TABLE Store (
    StoreID INT NOT NULL,
    StoreName VARCHAR(100) NOT NULL,
    Street VARCHAR(100),
    City VARCHAR(50) NOT NULL,
    [State] VARCHAR(50) NOT NULL,
    ZipCode VARCHAR(20) NOT NULL,
    ContactNumber BIGINT NOT NULL,
	CONSTRAINT PK_StoreID PRIMARY KEY (StoreID)
);

-- Supplier Table
CREATE TABLE Supplier (
    SupplierID INT NOT NULL,
    SupplierName VARCHAR(100) NOT NULL,
    ContactNumber BIGINT NOT NULL,
	CONSTRAINT PK_SupplierID PRIMARY KEY (SupplierID)
);

-- SupplierContract Table
CREATE TABLE SupplierContract (
    ContractID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
	CONSTRAINT PK_ContractID PRIMARY KEY (ContractID)
);

-- Category Table
CREATE TABLE Category (
    CategoryID INT NOT NULL,
    CategoryName VARCHAR(100) NOT NULL,
	CONSTRAINT PK_CategoryID PRIMARY KEY (CategoryID)
);

-- Creating the SupplierCategory junction table
CREATE TABLE SupplierCategory (
    SupplierID INT NOT NULL,
    CategoryID INT NOT NULL,
    CONSTRAINT PK_SupplierCategory PRIMARY KEY (SupplierID, CategoryID),
    CONSTRAINT FK_SupplierID FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID),
    CONSTRAINT FK_CategoryID FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- ProductReview Table
CREATE TABLE ProductReview (
    ReviewID INT NOT NULL,
    Rating INT NOT NULL,
    Comment VARCHAR(MAX),
    ReviewDate DATE NOT NULL,
	CONSTRAINT PK_ReviewID PRIMARY KEY (ReviewID)
);

-- Planogram Table
CREATE TABLE Planogram (
    PlanogramID INT NOT NULL,
    WarehouseZone VARCHAR(50) NOT NULL,
    AisleNumber INT NOT NULL,
    ShelfNumber INT NOT NULL,
	CONSTRAINT PK_PlanogramID PRIMARY KEY (PlanogramID)
);

-- Terms Table
CREATE TABLE Terms (
    TermID INT NOT NULL,
    TermDetail VARCHAR(MAX) NOT NULL
	CONSTRAINT PK_TermID PRIMARY KEY (TermID)
);