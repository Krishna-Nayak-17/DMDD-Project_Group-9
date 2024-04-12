USE WarehouseManagement;

-- Customer Table
INSERT INTO Customer (CustomerID, CustomerName, Street, City, [State], ZipCode,
ContactInfo)
VALUES
(1, 'Jay Ravani', '123 Main St', 'Anytown', 'CA', '12345', '1234567890'),
(2, 'Jane Smith', '456 Elm St', 'Springfield', 'IL', '62704', '2175550198'),
(3, 'Mihir Johnson', '789 Oak St', 'Mapleton', 'GA', '30450', '9125550152'),
(4, 'Lisa Taylor', '101 Pine Cir', 'Oakdale', 'MN', '55128', '6515550187'),
(5, 'Tom Brown', '102 Maple Ave', 'Brookside', 'TX', '77484', '9795550165'),
(6, 'Linda White', '103 Ash Dr', 'Riverside', 'NJ', '08075', '8565550131'),
(7, 'Robert Harris', '104 Birch Ln', 'Eastwood', 'FL', '32833', '4075550144'),
(8, 'Emily Wilson', '105 Cedar Blvd', 'Hillcrest', 'NY', '11756', '5165550199'),
(9, 'Paul Green', '106 Hickory St', 'Summerville', 'SC', '29483', '8435550176'),
(10, 'Nancy Carter', '107 Cypress Ct', 'Bayside', 'VA', '23325', '7575550120'),
(11, 'Alice Moore', '108 Willow Path', 'Clifton', 'AZ', '85533', '9285550155'),
(12, 'Chris Thompson', '109 Palm Rd', 'Fairview', 'CO', '81328', '9705550191'),
(13, 'Jessica Garcia', '110 Redwood St', 'Hilltop', 'NE', '69361', '3085550137'),
(14, 'Ujjwal Gupta', '111 Sequoia Ave', 'Midtown', 'NV', '89523', '7755550186'),
(15, 'Sarah Martin', '112 Fir Pl', 'Northgate', 'OR', '97203', '5035550193'),
(16, 'Kevin Lee', '113 Chestnut Way', 'Southfield', 'MI', '48075', '2485550149'),
(17, 'Laura Walker', '114 Magnolia St', 'Lakeshore', 'MS', '38664', '6625550111'),
(18, 'Matt Robinson', '115 Cherry Ln', 'Ridgeway', 'TN', '38120', '9015550159'),
(19, 'Sandra Lewis', '116 Plum St', 'Seaview', 'WA', '98382', '3605550142'),
(20, 'Andrew Young', '117 Beech Rd', 'Highland Park', 'IL', '60035', '8475550126');

-- Employee Table
INSERT INTO Employee (EmployeeID, FirstName, LastName, Salary, ContactNumber)
VALUES
(1, 'Raj', 'Patel', 50000.00, '1234567890'),
(2, 'Emily', 'Johnson', 92000.00, '6234567891'),
(3, 'Michael', 'Smith', 88000.00, '9234567892'),
(4, 'Laura', 'Davis', 51000.00, '4234567893'),
(5, 'James', 'Brown', 53000.00, '4234567894'),
(6, 'Jessica', 'Miller', 69500.00, '6234567895'),
(7, 'David', 'Wilson', 67000.00, '8234567896'),
(8, 'Sarah', 'Moore', 50500.00, '3234567897'),
(9, 'Krishna', 'Nayak', 120500.00, '5234567898'),
(10, 'Anna', 'Anderson', 49000.00, '2234567899'),
(11, 'Robert', 'Thomas', 52500.00, '8234567900'),
(12, 'Lisa', 'Jackson', 41500.00, '8234567901'),
(13, 'Mark', 'Lee', 47500.00, '9234567902'),
(14, 'Nancy', 'White', 51000.00, '3234567903'),
(15, 'Kevin', 'Harris', 50500.00, '7234567904'),
(16, 'Karen', 'Martin', 34000.00, '5234567905'),
(17, 'Jason', 'Thompson', 49500.00, '4234567906'),
(18, 'Olivia', 'Garcia', 132000.00, '1234567907'),
(19, 'Brian', 'Martinez', 48500.00, '8234567908'),
(20, 'Preyash', 'Mehta', 130000.00, '5234567909');

-- Store Table
INSERT INTO Store (StoreID, StoreName, Street, City, [State], ZipCode, ContactNumber)
VALUES
(1, 'Main Street Store', '123 Main St', 'Anytown', 'CA', '12345', '1234567890'),
(2, 'City Center Goods', '456 Center Rd', 'Midtown', 'TX', '75001', '2144567891'),
(3, 'Urban Warehouse', '789 Urban Ln', 'Uptown', 'NY', '10001', '2124567892'),
(4, 'Suburban Supplies', '101 Suburb St', 'Leavitt', 'PA', '19101', '2154567893'),
(5, 'Riverside Market', '202 River Rd', 'River City', 'FL', '32201', '9044567894'),
(6, 'Mountain View Sellers', '303 Mountain Dr', 'Highland', 'CO', '80014','3034567895'),
(7, 'Lakeside Depot', '404 Lake Ave', 'Laketown', 'MI', '48001', '2484567896'),
(8, 'Bayside Retailers', '505 Bay St', 'Bayville', 'CA', '90001', '3104567897'),
(9, 'Valley Supply Co', '606 Valley Rd', 'Meadow', 'VA', '22001', '7034567898'),
(10, 'Crossroads Trading', '707 Cross St', 'Crossville', 'IL', '60007', '8474567899'),
(11, 'Golden Gate Merchants', '808 Bridge Blvd', 'Bayside', 'CA', '94101','4154567800'),
(12, 'Capital City Market', '909 Capitol Way', 'Centerburg', 'OH', '43001','6144567801'),
(13, 'Pine Tree Goods', '110 Pine Tree Ln', 'Pineville', 'WA', '98101', '2064567802'),
(14, 'Silver Valley Vendors', '111 Silver St', 'Silvertown', 'NV', '89001','7754567803'),
(15, 'Eastside Retail', '112 East Ave', 'Eastburg', 'NJ', '07001', '9734567804');

-- Order Table
INSERT INTO [Order] (OrderID, OrderDate, [Status], ShippedDate, StoreID, EmployeeID)
VALUES
(1, '2023-04-01', 'Shipped', '2023-04-03', 1, 5),
(2, '2023-04-02', 'Pending', NULL, 2, 7),
(3, '2023-04-03', 'Shipped', '2023-04-05', 3, 1),
(4, '2023-04-04', 'Cancelled', NULL, 3, 8),
(5, '2023-04-05', 'Shipped', '2023-04-07', 4, 2),
(6, '2023-04-06', 'Pending', NULL, 9, 15),
(7, '2023-04-07', 'Shipped', '2023-04-09', 13, 19),
(8, '2023-04-08', 'Cancelled', NULL, 11, 13),
(9, '2023-04-09', 'Shipped', '2023-04-11', 15, 6),
(10, '2023-04-10', 'Pending', NULL, 13, 7),
(11, '2023-04-11', 'Shipped', '2023-04-13', 8, 17),
(12, '2023-04-12', 'Cancelled', NULL, 2, 19),
(13, '2023-04-13', 'Shipped', '2023-04-15', 6, 12),
(14, '2023-04-14', 'Pending', NULL, 8, 13),
(15, '2023-04-15', 'Shipped', '2023-04-17', 14, 14),
(16, '2023-04-16', 'Cancelled', NULL, 4, 16),
(17, '2023-04-17', 'Shipped', '2023-04-19', 11, 8),
(18, '2023-04-18', 'Pending', NULL, 9, 5),
(19, '2023-04-19', 'Shipped', '2023-04-21', 4, 20),
(20, '2023-04-20', 'Cancelled', NULL, 6, 2),
(21, '2023-04-21', 'Shipped', '2023-04-23', 7, 9),
(22, '2023-04-22', 'Pending', NULL, 5, 18),
(23, '2023-04-23', 'Shipped', '2023-04-25', 10, 4),
(24, '2023-04-24', 'Cancelled', NULL, 8, 3),
(25, '2023-04-25', 'Shipped', '2023-04-27', 1, 10),
(26, '2023-04-26', 'Pending', NULL, 12, 11),
(27, '2023-04-27', 'Shipped', '2023-04-29', 14, 12),
(28, '2023-04-28', 'Cancelled', NULL, 15, 14),
(29, '2023-04-29', 'Shipped', '2023-05-01', 2, 16),
(30, '2023-04-30', 'Pending', NULL, 3, 17),
(31, '2023-05-01', 'Shipped', '2023-05-03', 7, 6),
(32, '2023-05-02', 'Cancelled', NULL, 5, 15),
(33, '2023-05-03', 'Shipped', '2023-05-05', 6, 1),
(34, '2023-05-04', 'Pending', NULL, 9, 20),
(35, '2023-05-05', 'Shipped', '2023-05-07', 12, 3),
(36, '2023-05-06', 'Cancelled', NULL, 10, 13),
(37, '2023-05-07', 'Shipped', '2023-05-09', 15, 19),
(38, '2023-05-08', 'Pending', NULL, 14, 18),
(39, '2023-05-09', 'Shipped', '2023-05-11', 13, 2),
(40, '2023-05-10', 'Cancelled', NULL, 11, 5);

-- Category Table
INSERT INTO Category (CategoryID, CategoryName)
VALUES
(1, 'Widgets'),
(2, 'Gadgets'),
(3, 'Gizmos'),
(4, 'Electronics'),
(5, 'Office Supplies'),
(6, 'Furniture'),
(7, 'Automotive'),
(8, 'Sporting Goods'),
(9, 'Clothing'),
(10, 'Home Decor'),
(11, 'Tools'),
(12, 'Kitchen Appliances'),
(13, 'Outdoor Equipment'),
(14, 'Toys'),
(15, 'Beauty Products'),
(16, 'Pet Supplies'),
(17, 'Gardening Supplies'),
(18, 'Health Products'),
(19, 'Bakery Goods'),
(20, 'Craft Supplies');

-- Supplier Table
INSERT INTO Supplier (SupplierID, SupplierName, ContactNumber)
VALUES
(1, 'Acme Supplies Inc.', '1234567892'),
(2, 'TechCo Solutions', '9876543212'),
(3, 'Innovations Unlimited', '4567891233'),
(4, 'Global Tech Partners', '3216549873'),
(5, 'Office Essentials LLC', '7894561234'),
(6, 'Furniture Emporium', '1597534564'),
(7, 'Automotive Solutions Inc.', '7539518525'),
(8, 'Sports Gear Experts', '9517534565'),
(9, 'Clothing Collective', '7539517536'),
(10, 'Home Decor Boutique', '9517539516'),
(11, 'Tool Masters', '1597531597'),
(12, 'Kitchen Innovators', '7531597537'),
(13, 'Outdoor Adventure Co.', '1593579518'),
(14, 'Toy Emporium', '7531593578'),
(15, 'Beauty Supplies Depot', '9513571599'),
(16, 'Pet Care Distributors', '2583691472'),
(17, 'Green Thumb Supply Co.', '8521479633'),
(18, 'Health Wellness Providers', '3692581475'),
(19, 'Sweet Treats Bakery Supply', '7412589638'),
(20, 'Crafting Corner LLC', '1598523572');

-- Product Table
INSERT INTO Product (ProductName, Manufacturer, [Description], UnitPrice, CategoryID, SupplierID)
VALUES
('Automotive Tool G', 'Automotive Solutions Inc.', 'A versatile automotive tool for mechanics.', 29.99, 7, 7),
('Electric Drill X5', 'Tool Masters', 'High-power electric drill for construction and home use.', 119.50, 11, 11),
('Mountain Bike Pro', 'Sports Gear Experts', 'Off-road mountain bike with advanced suspension.', 325.00, 8, 8),
('Silk Blouse', 'Clothing Collective', 'Elegant silk blouse available in multiple colors.', 45.00, 9, 9),
('Office Desk Lamp', 'Office Essentials LLC', 'Stylish desk lamp with adjustable brightness.', 23.99, 5, 5),
('Leather Executive Chair', 'Furniture Emporium', 'Comfortable leather executive office chair.', 149.99, 6, 6),
('Organic Pet Food', 'Pet Care Distributors', 'All-natural, organic pet food for cats and dogs.', 29.50, 16, 16),
('Garden Shovel', 'Green Thumb Supply Co.', 'Durable garden shovel with ergonomic handle.', 19.99, 17, 17),
('Yoga Mat Eco Friendly', 'Health Wellness Providers', 'Eco-friendly yoga mat made from recycled materials.', 34.99, 18, 18),
('Fresh Baked Bread', 'Sweet Treats Bakery Supply', 'Freshly baked bread with no preservatives.', 2.99, 19, 19),
('Crafting Kit', 'Crafting Corner LLC', 'Complete crafting kit with assorted materials.', 24.99, 20, 20),
('Portable Speaker', 'Global Tech Partners', 'Bluetooth portable speaker with high-quality sound.', 49.99, 4, 4),
('Kids Toy Car', 'Toy Emporium', 'Durable plastic toy car suitable for ages 3-6.',14.99, 14, 14),
('Face Moisturizer', 'Beauty Supplies Depot', 'Hydrating face moisturizer suitable for all skin types.', 22.50, 15, 15),
('LED Camping Lantern', 'Outdoor Adventure Co.', 'Bright LED lantern for camping and emergencies.', 29.95, 13, 13),
('Professional Hair Dryer', 'Beauty Supplies Depot', 'High-speed hair dryer with multiple heat settings.', 89.99, 15, 15),
('Stainless Steel Cookware Set', 'Kitchen Innovators', '10-piece high-end stainless steel cookware set.', 199.99, 12, 12),
('Automatic Screwdriver', 'Tool Masters', 'Cordless automatic screwdriver with multiple bits.', 29.95, 11, 11),
('Decorative Wall Mirror', 'Home Decor Boutique', 'Stylish wall mirror perfect for living rooms or hallways.', 59.99, 10, 10),
('GPS Navigation System', 'TechCo Solutions', 'Latest model GPS navigation system with voice commands.', 99.99, 4, 2),
('Wireless Keyboard', 'Global Tech Partners', 'Ergonomic wireless keyboard with long battery life.', 29.95, 4, 4),
('Luxury Bed Frame', 'Furniture Emporium', 'Queen size luxury bed frame made from solid wood.', 259.99, 6, 6),
('Eau de Parfum', 'Beauty Supplies Depot', 'Exquisite eau de parfum with a lasting floral scent.', 75.00, 15, 15),
('Professional Blender', 'Kitchen Innovators', 'High-speed professional blender for smoothies and soups.', 129.99, 12, 12),
('Digital SLR Camera', 'TechCo Solutions', 'High-resolution digital SLR camera for professional photography.', 499.99, 4, 2),
('Designer Sofa Set', 'Furniture Emporium', 'Modern designer sofa set with plush upholstery.', 899.99, 6, 6),
('Organic Facial Cleanser', 'Health Wellness Providers', 'Gentle organic facial cleanser suitable for sensitive skin.', 19.99, 18, 18),
('Adjustable Dumbbells', 'Sports Gear Experts', 'Set of adjustable dumbbells for home fitness enthusiasts.', 199.99, 8, 8),
('Men Running Shoes', 'Sports Gear Experts', 'Lightweight and breathable men�s running shoes.', 49.99, 8, 8),
('Compact Microwave Oven', 'Kitchen Innovators', 'Compact microwave oven, ideal for small kitchens.', 99.99, 12, 12),
('Multifunction Printer', 'Office Essentials LLC', 'High-speed multifunction printer with print, scan, and copy capabilities.', 199.99, 5, 5),
('Multifunction Printer', 'TechCo Solutions', 'High-speed multifunction printer with Wi-Fi connectivity and mobile printing.', 209.99, 5, 2),
('Smartphone 12X', 'Global Tech Partners', 'Latest model smartphone with 128GB storage and excellent camera.', 799.99, 4, 4),
('Smartphone 12X', 'TechCo Solutions', 'New generation smartphone with fast charging and long-lasting battery.', 789.99, 4, 2),
('Ergonomic Office Chair', 'Furniture Emporium', 'Comfortable ergonomic officenchair with adjustable height and lumbar support.', 149.99, 5, 6),
('Ergonomic Office Chair', 'Office Essentials LLC', 'Stylish ergonomic officenchair designed for maximum comfort during long working hours.', 159.99, 5, 5),
('4K Ultra HD Monitor', 'Global Tech Partners', '28-inch 4K Ultra HD monitor perfect for professional and gaming use.', 349.99, 4, 4),
('4K Ultra HD Monitor', 'TechCo Solutions', '4K monitor with HDR and wide color gamut for exceptional image quality.', 359.99, 4, 2),
('Premium Whiteboard', 'Crafting Corner LLC', 'Durable magnetic whiteboard for office and classroom use.', 89.99, 5, 20),
('Premium Whiteboard', 'Furniture Emporium', 'Large whiteboard with easy-to-clean surface, includes marker tray.', 95.99, 5, 6),
('Premium Whiteboard', 'Acme Supplies Inc.', 'Magnetic whiteboard with aluminumf rame and wall mounting kit.', 90.99, 5, 1),
('Stackable Office Bins', 'Crafting Corner LLC', 'Stackable recycling bins for office use, color-coded for convenience.', 29.99, 5, 20),
('Stackable Office Bins', 'Furniture Emporium', 'Durable stackable bins for organizing supplies, with label holders.', 34.99, 5, 6),
('Stackable Office Bins', 'Acme Supplies Inc.', 'Office stackable bins in assorted colors, made from recycled plastic.', 32.99, 5, 1),
('Executive Notebook Set', 'Crafting Corner LLC', 'High-quality leather-bound notebook set, includes pen and bookmark.', 49.99, 5, 20),
('Executive Notebook Set', 'Furniture Emporium', 'Executive notebook with premium paper, perfect for business meetings.', 54.99, 5, 6),
('Executive Notebook Set', 'Acme Supplies Inc.', 'Luxurious notebook set forprofessionals, with personalized options.', 52.99, 5, 1),
('Adjustable Desk Lamp', 'Crafting Corner LLC', 'Energy-efficient LED desk lamp with adjustable brightness and arm.', 42.99, 5, 20),
('Adjustable Desk Lamp', 'Furniture Emporium', 'Modern desk lamp with touch sensor controls and USB charging port.', 47.99, 5, 6),
('Adjustable Desk Lamp', 'Acme Supplies Inc.', 'Stylish adjustable desk lamp with sleek design, ideal for any office.', 45.99, 5, 1),
('Adjustable Desk Lamp', 'TechCo Solutions', 'High-performance desk lamp with dimmable LED light and memory function.', 49.99, 5, 2),
('Adjustable Desk Lamp', 'Office Essentials LLC', 'Compact and portable desk lamp, perfect for small workspaces.', 39.99, 5, 5);

-- OrderDetail Table
INSERT INTO OrderDetail (OrderDetailID, QuantityOrdered, UnitPrice, OrderID, ProductID)
VALUES
(1, 5, 10.99, 1, 1),
(2, 3, 15.99, 2, 2),
(3, 8, 8.99, 3, 3),
(4, 2, 20.99, 4, 4),
(5, 10, 12.99, 5, 5),
(6, 6, 18.99, 6, 6),
(7, 4, 14.99, 7, 7),
(8, 7, 11.99, 8, 8),
(9, 9, 17.99, 9, 9),
(10, 1, 25.99, 10, 10),
(11, 12, 9.99, 11, 11),
(12, 4, 19.99, 12, 12),
(13, 6, 13.99, 13, 13),
(14, 8, 16.99, 14, 14),
(15, 3, 22.99, 15, 15),
(16, 10, 11.99, 16, 3),
(17, 5, 15.99, 17, 8),
(18, 7, 18.99, 18, 11),
(19, 2, 24.99, 19, 14),
(20, 9, 14.99, 20, 6),
(21, 2, 22.99, 21, 16),
(22, 4, 18.99, 22, 22),
(23, 6, 9.99, 23, 23),
(24, 3, 49.99, 24, 24),
(25, 7, 44.99, 25, 25),
(26, 1, 399.99, 26, 26),
(27, 5, 89.99, 27, 27),
(28, 8, 199.99, 28, 28),
(29, 2, 24.99, 29, 29),
(30, 10, 99.99, 30, 30),
(31, 4, 199.99, 31, 31),
(32, 6, 209.99, 32, 32),
(33, 1, 799.99, 33, 33),
(34, 3, 789.99, 34, 34),
(35, 2, 149.99, 35, 35),
(36, 7, 159.99, 36, 36),
(37, 9, 349.99, 37, 37),
(38, 1, 359.99, 38, 38),
(39, 4, 89.99, 39, 39),
(40, 5, 95.99, 40, 40);

-- Payment Table
INSERT INTO Payment (PaymentID, PaymentDate, Amount, PaymentType, OrderID)
VALUES
(1, '2023-04-01', 100.00, 'Card', 15),
(2, '2023-04-02', 75.50, 'PayPal', 8),
(3, '2023-04-03', 120.75, 'BankTransfer', 2),
(4, '2023-04-04', 89.99, 'Card', 19),
(5, '2023-04-05', 65.25, 'PayPal', 6),
(6, '2023-04-06', 105.00, 'BankTransfer', 11),
(7, '2023-04-07', 95.75, 'Card', 4),
(8, '2023-04-08', 80.50, 'PayPal', 13),
(9, '2023-04-09', 115.00, 'BankTransfer', 9),
(10, '2023-04-10', 92.99, 'Card', 1),
(11, '2023-04-11', 70.25, 'PayPal', 18),
(12, '2023-04-12', 110.50, 'BankTransfer', 7),
(13, '2023-04-13', 85.75, 'Card', 14),
(14, '2023-04-14', 95.00, 'PayPal', 3),
(15, '2023-04-15', 120.99, 'BankTransfer', 20),
(16, '2023-04-16', 78.50, 'Card', 12),
(17, '2023-04-17', 105.25, 'PayPal', 5),
(18, '2023-04-18', 95.75, 'BankTransfer', 16),
(19, '2023-04-19', 110.00, 'Card', 10),
(20, '2023-04-20', 85.50, 'PayPal', 17),
(21, '2023-05-01', 98.50, 'Card', 21),
(22, '2023-05-02', 77.25, 'PayPal', 28),
(23, '2023-05-03', 134.00, 'BankTransfer', 22),
(24, '2023-05-04', 93.99, 'Card', 27),
(25, '2023-05-05', 67.80, 'PayPal', 26),
(26, '2023-05-06', 112.50, 'BankTransfer', 23),
(27, '2023-05-07', 99.95, 'Card', 24),
(28, '2023-05-08', 82.00, 'PayPal', 29),
(29, '2023-05-09', 119.75, 'BankTransfer', 25),
(30, '2023-05-10', 94.50, 'Card', 31),
(31, '2023-05-11', 72.20, 'PayPal', 32),
(32, '2023-05-12', 115.00, 'BankTransfer', 30),
(33, '2023-05-13', 88.75, 'Card', 34),
(34, '2023-05-14', 100.25, 'PayPal', 33),
(35, '2023-05-15', 125.99, 'BankTransfer', 35),
(36, '2023-05-16', 79.95, 'Card', 36),
(37, '2023-05-17', 104.60, 'PayPal', 37),
(38, '2023-05-18', 96.25, 'BankTransfer', 38),
(39, '2023-05-19', 113.50, 'Card', 39),
(40, '2023-05-20', 87.00, 'PayPal', 40);

-- BankTransfer Table
INSERT INTO BankTransfer (PaymentID, BankAccountNumber, BankName, RoutingNumber)
VALUES
(3, '123456789012', 'Bank of America', '021000322'),
(6, '987654311098', 'Wells Fargo', '121000248'),
(9, '555555555555', 'Chase Bank', '021000021'),
(12, '222222222222', 'Citi Bank', '021000089'),
(15, '888888888888', 'US Bank', '091000022'),
(18, '111111111177', 'PNC Bank', '043000096'),
(23, '333333333333', 'Capital One', '031176110'),
(26, '444444444444', 'TD Bank', '031101266'),
(29, '666666666666', 'BB&T', '053101121'),
(32, '777777777777', 'SunTrust', '061000104'),
(35, '999999999999', 'Regions Bank', '062000019'),
(38, '123123123123', 'Fifth Third Bank', '042000314');

-- Card Table
INSERT INTO Card (PaymentID, CardNumber, CardHolderName, ExpirationDate, CVV)
VALUES
(1, '4423544444444444', 'David Thompson', '2024-02-28', '901'),
(4, '3333223333333333', 'Sarah Anderson', '2025-05-31', '234'),
(7, '6666669836666666', 'Christopher Taylor', '2026-09-30', '567'),
(10, '1111453611111111', 'Ashley Martinez', '2027-01-31', '890'),
(13, '9998745399999999', 'Matthew Hernandez', '2024-08-31', '123'),
(16, '8882348888888888', 'Olivia Gonzalez', '2025-11-30', '456'),
(19, '5555934525555555', 'Ethan Clark', '2026-04-30', '789'),
(21, '2222222286222222', 'Samantha Lewis', '2027-03-31', '012'),
(24, '7777777543777777', 'Brian Walker', '2024-12-31', '345'),
(27, '1234567890123456', 'Jessica Hill', '2025-07-31', '678'),
(30, '9876543210987654', 'Jason Scott', '2026-01-31', '901'),
(33, '1357924680246813', 'Sarah Brown', '2027-06-30', '234'),
(36, '2468013579246802', 'Robert Moore', '2024-11-30', '567'),
(39, '8642097531864209', 'Emily Wilson', '2025-08-31', '890');

-- PayPal Table
INSERT INTO PayPal (PaymentID, PaypalAccountEmail)
VALUES
(2, 'john.doe@email.com'),
(5, 'jane.smith@email.com'),
(8, 'bob.johnson@email.com'),
(11, 'samantha.brown@email.com'),
(14, 'michael.wilson@email.com'),
(17, 'emily.davis@email.com'),
(20, 'david.thompson@email.com'),
(22, 'laura.martin@email.com'),
(25, 'kevin.taylor@email.com'),
(28, 'rachel.anderson@email.com'),
(31, 'mike.jones@email.com'),
(34, 'lisa.white@email.com'),
(37, 'mark.black@email.com'),
(40, 'nancy.gray@email.com');

-- Shipment Table
INSERT INTO Shipment (ShipmentID, TrackingNumber, ShipmentDate, CarrierType, OrderID)
VALUES
(1, 'TRK123456789', '2023-04-02', 'Truck', 1),
(2, 'PLN987654321', '2023-04-01', 'Plane', 2),
(3, 'SHP456789123', '2023-04-04', 'Ship', 3),
(4, 'TRK789123456', '2023-04-03', 'Truck', 4),
(5, 'PLN321987654', '2023-04-06', 'Plane', 5),
(6, 'PLN987654321', '2023-04-05', 'Plane', 6),
(7, 'TRK456789123', '2023-04-08', 'Truck', 7),
(8, 'PLN159753456', '2023-04-07', 'Plane', 8),
(9, 'SHP753159456', '2023-04-10', 'Ship', 9),
(10, 'PLN456753159', '2023-04-09', 'Plane', 10),
(11, 'SHP159753159', '2023-04-12', 'Ship', 11),
(12, 'PLN753159753', '2023-04-11', 'Plane', 12),
(13, 'TRK159753753', '2023-04-14', 'Truck', 13),
(14, 'PLN753159159', '2023-04-13', 'Plane', 14),
(15, 'PLN159159753', '2023-04-16', 'Plane', 15),
(16, 'TRK753753159', '2023-04-15', 'Truck', 16),
(17, 'SHP159159159', '2023-04-18', 'Ship', 17),
(18, 'PLN753753753', '2023-04-17', 'Plane', 18),
(19, 'TRK159159753', '2023-04-20', 'Truck', 19),
(20, 'PLN753753159', '2023-04-19', 'Plane', 20),
(21, 'PLN753159852', '2023-04-22', 'Plane', 21),
(22, 'TRK159753852', '2023-04-21', 'Truck', 22),
(23, 'PLN753852159', '2023-04-24', 'Plane', 23),
(24, 'SHP852753159', '2023-04-23', 'Ship', 24),
(25, 'PLN852159753', '2023-04-26', 'Plane', 25),
(26, 'TRK159852753', '2023-04-25', 'Truck', 26),
(27, 'PLN753852753', '2023-04-28', 'Plane', 27),
(28, 'TRK159852159', '2023-04-27', 'Truck', 28),
(29, 'PLN852753159', '2023-04-30', 'Plane', 29),
(30, 'SHP159753852', '2023-04-29', 'Ship', 30),
(31, 'PLN753852159', '2023-05-02', 'Plane', 31),
(32, 'TRK852159753', '2023-05-01', 'Truck', 32),
(33, 'PLN753159852', '2023-05-04', 'Plane', 33),
(34, 'SHP852753159', '2023-05-03', 'Ship', 34),
(35, 'PLN159753852', '2023-05-06', 'Plane', 35),
(36, 'TRK753852753', '2023-05-05', 'Truck', 36),
(37, 'PLN159852753', '2023-05-08', 'Plane', 37),
(38, 'TRK852753159', '2023-05-07', 'Truck', 38),
(39, 'PLN753159852', '2023-05-10', 'Plane', 39),
(40, 'SHP852159753', '2023-05-09', 'Ship', 40);

-- Plane Table
INSERT INTO Plane (ShipmentID, FlightNumber, Airline)
VALUES
(2, 'AA1234', 'American Airlines'),
(5, 'UA5678', 'United Airlines'),
(6, 'DL9012', 'Delta Air Lines'),
(8, 'AA3456', 'American Airlines'),
(10, 'UA6789', 'United Airlines'),
(12, 'DL2345', 'Delta Air Lines'),
(14, 'AA4567', 'American Airlines'),
(15, 'UA7890', 'United Airlines'),
(18, 'DL3456', 'Delta Air Lines'),
(20, 'AA5678', 'American Airlines'),
(21, 'UA8901', 'United Airlines'),
(23, 'DL4567', 'Delta Air Lines'),
(25, 'AA6789', 'American Airlines'),
(27, 'UA9012', 'United Airlines'),
(29, 'DL5678', 'Delta Air Lines'),
(31, 'AA7890', 'American Airlines'),
(33, 'UA0123', 'United Airlines'),
(35, 'DL6789', 'Delta Air Lines'),
(37, 'AA8901', 'American Airlines'),
(39, 'UA1234', 'United Airlines');

-- Ship Table
INSERT INTO Ship (ShipmentID, ShipName, PortOfOrigin, PortOfDestination)
VALUES
(3, 'Majestic Seas', 'New York', 'Los Angeles'),
(9, 'Ocean Voyager', 'Miami', 'Seattle'),
(11, 'Pacific Breeze', 'San Francisco', 'Boston'),
(17, 'Majestic Seas', 'Los Angeles', 'New York'),
(24, 'Ocean Voyager', 'Seattle', 'Miami'),
(30, 'Pacific Breeze', 'Boston', 'San Francisco'),
(34, 'Majestic Seas', 'New York', 'Los Angeles'),
(40, 'Ocean Voyager', 'Miami', 'Seattle');

-- Truck Table
INSERT INTO Truck (ShipmentID, TruckLicensePlate, DriverName, ExpectedDeliveryDate)
VALUES
(1, 'TRK1234', 'John Smith', '2023-04-02'),
(4, 'TRK5678', 'Jane Doe', '2023-04-03'),
(7, 'TRK9012', 'Bob Johnson', '2023-04-08'),
(13, 'TRK2345', 'Alice Parker', '2023-04-14'),
(16, 'TRK3456', 'David Lee', '2023-04-15'),
(19, 'TRK4567', 'Samantha Brown', '2023-04-20'),
(22, 'TRK5678', 'Lisa Chen', '2023-04-21'),
(26, 'TRK6789', 'Mark Turner', '2023-04-25'),
(28, 'TRK7890', 'Chris Evans', '2023-04-27'),
(32, 'TRK8901', 'Maggie Hope', '2023-05-01'),
(36, 'TRK9012', 'Scott Peters', '2023-05-05'),
(38, 'TRK0123', 'Nancy Drew', '2023-05-07');

-- Planogram Table
INSERT INTO Planogram (PlanogramID, WarehouseZone, AisleNumber, ShelfNumber)
VALUES
(1, 'Zone A', 1, 1),
(2, 'Zone A', 1, 2),
(3, 'Zone A', 1, 3),
(4, 'Zone A', 2, 1),
(5, 'Zone A', 2, 2),
(6, 'Zone B', 3, 1),
(7, 'Zone B', 3, 2),
(8, 'Zone B', 3, 3),
(9, 'Zone B', 4, 1),
(10, 'Zone B', 4, 2),
(11, 'Zone C', 5, 1),
(12, 'Zone C', 5, 2),
(13, 'Zone C', 5, 3),
(14, 'Zone C', 6, 1),
(15, 'Zone C', 6, 2),
(16, 'Zone D', 7, 1),
(17, 'Zone D', 7, 2),
(18, 'Zone D', 7, 3),
(19, 'Zone D', 8, 1),
(20, 'Zone D', 8, 2),
(21, 'Zone E', 9, 1),
(22, 'Zone E', 9, 2),
(23, 'Zone E', 9, 3),
(24, 'Zone E', 10, 1),
(25, 'Zone E', 10, 2),
(26, 'Zone F', 11, 1),
(27, 'Zone F', 11, 2),
(28, 'Zone F', 11, 3),
(29, 'Zone F', 12, 1),
(30, 'Zone F', 12, 2),
(31, 'Zone G', 13, 1),
(32, 'Zone G', 13, 2),
(33, 'Zone G', 13, 3),
(34, 'Zone G', 14, 1),
(35, 'Zone G', 14, 2),
(36, 'Zone H', 15, 1),
(37, 'Zone H', 15, 2),
(38, 'Zone H', 15, 3),
(39, 'Zone H', 16, 1),
(40, 'Zone H', 16, 2);

-- Inventory Table
INSERT INTO Inventory (InventoryID, QuantityOnHand, ReorderPoint, LastRestockedDate, ProductID, StoreID, PlanogramID)
VALUES
(1, 50, 20, '2023-03-15', 1, 1, 1),
(2, 30, 10, '2023-03-20', 2, 2, 2),
(3, 40, 15, '2023-03-18', 3, 3, 3),
(4, 60, 25, '2023-03-22', 10, 4, 4),
(5, 20, 5, '2023-03-25', 25, 5, 5),
(6, 70, 30, '2023-03-10', 11, 6, 6),
(7, 45, 15, '2023-03-17', 12, 7, 7),
(8, 50, 20, '2023-03-14', 13, 8, 8),
(9, 35, 10, '2023-03-19', 14, 9, 9),
(10, 55, 20, '2023-03-13', 15, 10, 10),
(11, 25, 10, '2023-03-21', 20, 11, 11),
(12, 65, 25, '2023-03-11', 21, 12, 12),
(13, 30, 10, '2023-03-23', 22, 13, 13),
(14, 40, 15, '2023-03-16', 23, 14, 14),
(15, 20, 7, '2023-03-24', 24, 15, 15),
(16, 50, 20, '2023-04-01', 3, 1, 16),
(17, 30, 12, '2023-04-03', 4, 2, 17),
(18, 45, 18, '2023-04-02', 5, 3, 18),
(19, 25, 10, '2023-04-05', 6, 4, 19),
(20, 55, 22, '2023-04-04', 7, 5, 20),
(21, 35, 14, '2023-04-06', 8, 6, 21),
(22, 60, 25, '2023-04-07', 9, 7, 22),
(23, 50, 20, '2023-04-09', 10, 8, 23),
(24, 40, 16, '2023-04-08', 11, 9, 24),
(25, 30, 12, '2023-04-10', 12, 10, 25),
(26, 20, 8, '2023-04-12', 13, 11, 26),
(27, 10, 5, '2023-04-11', 14, 12, 27),
(28, 15, 5, '2023-04-13', 15, 13, 28),
(29, 25, 10, '2023-04-14', 16, 14, 29),
(30, 35, 14, '2023-04-15', 17, 15, 30),
(31, 45, 18, '2023-04-17', 18, 1, 31),
(32, 55, 22, '2023-04-16', 19, 2, 32),
(33, 65, 25, '2023-04-18', 20, 3, 33),
(34, 75, 30, '2023-04-19', 21, 4, 34),
(35, 85, 35, '2023-04-20', 22, 5, 35),
(36, 95, 40, '2023-04-21', 23, 6, 36),
(37, 105, 45, '2023-04-22', 24, 7, 37),
(38, 115, 50, '2023-04-23', 25, 8, 38),
(39, 125, 55, '2023-04-24', 26, 9, 39),
(40, 135, 60, '2023-04-25', 27, 10, 40),
(41, 145, 65, '2023-04-26', 28, 11, 2),
(42, 155, 70, '2023-04-27', 29, 12, 4),
(43, 165, 75, '2023-04-28', 30, 13, 6),
(44, 175, 80, '2023-04-29', 31, 14, 10),
(45, 185, 85, '2023-04-30', 32, 15, 12),
(46, 195, 90, '2023-05-01', 33, 1, 11),
(47, 205, 95, '2023-05-02', 34, 2, 9),
(48, 215, 100, '2023-05-03', 35, 3, 5),
(49, 225, 105, '2023-05-04', 36, 4, 28),
(50, 235, 110, '2023-05-05', 37, 5, 32);

-- SupplierContract Table
INSERT INTO SupplierContract (ContractID, StartDate, EndDate, SupplierID)
VALUES
(1, '2022-01-01', '2024-12-31', 1),
(2, '2021-06-01', '2023-05-31', 2),
(3, '2023-01-01', '2025-12-31', 3),
(4, '2022-03-01', '2024-02-28', 4),
(5, '2022-05-15', '2024-05-14', 5),
(6, '2021-07-01', '2023-06-30', 6),
(7, '2022-02-01', '2025-01-31', 7),
(8, '2023-04-01', '2026-03-31', 8),
(9, '2022-08-01', '2024-07-31', 9),
(10, '2021-09-01', '2023-08-31', 10),
(11, '2023-02-01', '2026-01-31', 11),
(12, '2021-11-01', '2024-10-31', 12),
(13, '2023-03-15', '2025-03-14', 13),
(14, '2021-12-01', '2023-11-30', 14),
(15, '2022-04-01', '2025-03-31', 15),
(16, '2022-06-01', '2024-05-31', 16),
(17, '2021-10-01', '2023-09-30', 17),
(18, '2022-07-01', '2025-06-30', 18),
(19, '2023-05-01', '2026-04-30', 19),
(20, '2021-08-01', '2023-07-31', 20);

-- Terms Table
INSERT INTO Terms (TermID, TermDetail, ContractID)
VALUES
(1, 'Payment due within 30 days of invoice date.', 1),
(2, 'Maximum order quantity of 500 units.', 1),
(3, 'Product warranties valid for 1 year.', 1),
(4, 'Payment due within 45 days of invoice date.', 2),
(5, 'Maximum order quantity of 1000 units.', 2),
(6, 'Product warranties valid for 2 years.', 2),
(7, 'Payment due within 60 days of invoice date.', 3),
(8, 'Maximum order quantity of 800 units.', 3),
(9, 'Product warranties valid for 6 months.', 3),
(10, 'Payment due within 30 days of invoice date.', 4),
(11, 'Maximum order quantity of 500 units.', 4),
(12, 'Product warranties valid for 1 year.', 4),
(13, 'Payment due within 45 days of invoice date.', 5),
(14, 'Maximum order quantity of 1000 units.', 5),
(15, 'Product warranties valid for 2 years.', 5),
(16, 'Payment due within 60 days of invoice date.', 6),
(17, 'Maximum order quantity of 750 units.', 6),
(18, 'Product warranties valid for 18 months.', 6),
(19, 'Payment due within 30 days of invoice date.', 7),
(20, 'Maximum order quantity of 600 units.', 7),
(21, 'Product warranties valid for 1 year.', 7),
(22, 'Payment due within 45 days of invoice date.', 8),
(23, 'Maximum order quantity of 850 units.', 8),
(24, 'Product warranties valid for 3 years.', 8),
(25, 'Payment due within 30 days of invoice date.', 9),
(26, 'Maximum order quantity of 500 units.', 9),
(27, 'Product warranties valid for 1 year.', 9),
(28, 'Payment due within 60 days of invoice date.', 10),
(29, 'Maximum order quantity of 700 units.', 10),
(30, 'Product warranties valid for 2 years.', 10),
(31, 'Payment due within 30 days of invoice date.', 11),
(32, 'Maximum order quantity of 450 units.', 11),
(33, 'Product warranties valid for 1 year.', 11),
(34, 'Payment due within 45 days of invoice date.', 12),
(35, 'Maximum order quantity of 550 units.', 12),
(36, 'Product warranties valid for 2 years.', 12),
(37, 'Payment due within 60 days of invoice date.', 13),
(38, 'Maximum order quantity of 350 units.', 13),
(39, 'Product warranties valid for 1 year.', 13),
(40, 'Payment due within 30 days of invoice date.', 14),
(41, 'Maximum order quantity of 400 units.', 14),
(42, 'Product warranties valid for 2 years.', 14),
(43, 'Payment due within 45 days of invoice date.', 15),
(44, 'Maximum order quantity of 900 units.', 15),
(45, 'Product warranties valid for 1 year.', 15),
(46, 'Payment due within 60 days of invoice date.', 16),
(47, 'Maximum order quantity of 650 units.', 16),
(48, 'Product warranties valid for 18 months.', 16),
(49, 'Payment due within 30 days of invoice date.', 17),
(50, 'Maximum order quantity of 300 units.', 17),
(51, 'Product warranties valid for 2 years.', 17),
(52, 'Payment due within 45 days of invoice date.', 18),
(53, 'Maximum order quantity of 1000 units.', 18),
(54, 'Product warranties valid for 3 years.', 18),
(55, 'Payment due within 30 days of invoice date.', 19),
(56, 'Maximum order quantity of 1200 units.', 19),
(57, 'Product warranties valid for 1 year.', 19),
(58, 'Payment due within 60 days of invoice date.', 20),
(59, 'Maximum order quantity of 500 units.', 20),
(60, 'Product warranties valid for 2 years.', 20);

-- ProductReview Table
INSERT INTO ProductReview (ReviewID, Rating, Comment, ReviewDate, SupplierID, ProductID)
VALUES
(1, 5, 'Excellent product! Highly recommended.', '2023-03-01', 7, 1),
(2, 4, 'Works well but a bit pricey.', '2023-03-02', 11, 2),
(3, 3, 'Average performance, nothing special.', '2023-03-03', 8, 3),
(4, 5, 'Fantastic quality, will buy again!', '2023-03-04', 9, 4),
(5, 2, 'Not as durable as expected.', '2023-03-05', 5, 5),
(6, 5, 'Comfortable and stylish, love it!', '2023-03-06', 6, 6),
(7, 4, 'Good quality food, but my pet prefers another brand.', '2023-03-07', 16, 7),
(8, 3, 'Decent shovel but the handle feels weak.', '2023-03-08', 17, 8),
(9, 5, 'Best yoga mat I have used, highly eco-friendly!', '2023-03-09', 18, 9),
(10, 1, 'Bread was stale upon arrival.', '2023-03-10', 19, 10),
(11, 4, 'Great kit, but missing a few pieces.', '2023-03-11', 20, 11),
(12, 5, 'The sound quality is superb, highly recommend.', '2023-03-12', 4, 12),
(13, 2, 'The car broke after a week, not happy.', '2023-03-13', 14, 13),
(14, 5, 'Leaves my skin feeling fresh and hydrated.', '2023-03-14', 15, 14),
(15, 3, 'Decent but there are brighter ones available.', '2023-03-15', 13, 15),
(16, 5, 'Powerful and efficient, a must-have!', '2023-03-16', 15, 16),
(17, 4, 'High quality set, though quite expensive.', '2023-03-17', 12, 17),
(18, 3, 'Functional, but the battery life could be better.', '2023-03-18', 11, 18),
(19, 5, 'A beautiful addition to my decor.', '2023-03-19', 10, 19),
(20, 2, 'Disappointing GPS accuracy and slow updates.', '2023-03-20', 2, 20),
(21, 4, 'Very comfortable for long typing sessions.', '2023-03-21', 4, 21),
(22, 5, 'Sturdy and elegant - exactly what I wanted.', '2023-03-22', 6, 22),
(23, 1, 'The scent is too overpowering, not as described.', '2023-03-23', 15, 23),
(24, 4, 'Blends everything perfectly, easy to clean.', '2023-03-24', 12, 24),
(25, 5, 'Incredible camera quality, worth every penny.', '2023-03-25', 2, 25),
(26, 3, 'Looks good but not the most comfortable.', '2023-03-26', 6, 26),
(27, 5, 'Gentle on the skin and very effective.', '2023-03-27', 18, 27),
(28, 2, 'Adjustment mechanism is clunky.', '2023-03-28', 8, 28),
(29, 4, 'Light and airy, perfect for running.', '2023-03-29', 8, 29),
(30, 3, 'Compact but heats unevenly.', '2023-03-30', 12, 30),
(31, 4, 'Very efficient, but a bit noisy.', '2023-03-31', 5, 31),
(32, 1, 'Constant jams and connectivity issues.', '2023-04-01', 2, 32),
(33, 5, 'The best phone Ive ever owned.', '2023-04-02', 4, 33),
(34, 4, 'Battery lasts all day, but it is quite pricey.', '2023-04-03', 2, 34),
(35, 5, 'Super comfortable, great for my back.', '2023-04-04', 6, 35),
(36, 2, 'Stylish but starts to creak after a few months.', '2023-04-05', 5, 36),
(37, 5, 'Amazing display, perfect for gaming and work.', '2023-04-06', 4, 37),
(38, 1, 'Poor color accuracy and frequent glitches.', '2023-04-07', 2, 38),
(39, 4, 'Solid, easy to clean, but a bit too large.', '2023-04-08', 20, 39),
(40, 3, 'Good quality but the mounting kit is flimsy.', '2023-04-09', 6, 40),
(41, 5, 'Excellent for organization, very sturdy.', '2023-04-10', 1, 41),
(42, 2, 'Colors fade quickly, not recommended.', '2023-04-11', 20, 42),
(43, 4, 'Practical for small offices, though somewhat overpriced.', '2023-04-12', 6, 43),
(44, 5, 'Top-notch quality and durability.', '2023-04-13', 1, 44),
(45, 3, 'Nice set but the pen leaks occasionally.', '2023-04-14', 20, 45),
(46, 4, 'Excellent for business use, very professional look.', '2023-04-15', 6, 46),
(47, 5, 'Luxurious feel and customizable, worth it.', '2023-04-16', 1, 47),
(48, 2, 'Light is too dim for my needs.', '2023-04-17', 20, 48),
(49, 1, 'Stopped working after a month, very disappointing.', '2023-04-18', 6, 49),
(50, 5, 'Perfect for my desk setup, highly recommended.', '2023-04-19', 1, 50),
(51, 4, 'Solid performance for the price.', '2023-04-20', 2, 20),
(52, 3, 'Expected more features for the cost.', '2023-04-21', 4, 21),
(53, 5, 'Exceeds expectations in design and comfort.', '2023-04-22', 6, 22),
(54, 2, 'Fragrance does not last as long as promised.', '2023-04-23', 15, 23),
(55, 5, 'Makes perfect smoothies every time.', '2023-04-24', 12, 24),
(56, 4, 'Image quality is unmatched.', '2023-04-25', 2, 25),
(57, 1, 'Uncomfortable for long sitting periods.', '2023-04-26', 6, 26),
(58, 5, 'My skin has never felt better.', '2023-04-27', 18, 27),
(59, 3, 'Good for beginners but professionals may find it lacking.', '2023-04-28', 8, 28),
(60, 4, 'Perfect fit and very durable.', '2023-04-29', 8, 29),
(61, 2, 'Heats up quickly but difficult to clean.', '2023-04-30', 12, 30),
(62, 5, 'Printing quality is excellent, very satisfied.', '2023-05-01', 5, 31),
(63, 3, 'Wifi setup is complicated.', '2023-05-02', 2, 32),
(64, 5, 'The best investment I�ve made this year.', '2023-05-03', 4, 33),
(65, 4, 'Charges quickly and lasts all day.', '2023-05-04', 2, 34),
(66, 5, 'Very supportive, my back pain has decreased significantly.', '2023-05-05', 6, 35),
(67, 2, 'Looks great but the build quality is lacking.', '2023-05-06', 5, 36),
(68, 5, 'Colors are vibrant, and the refresh rate is fantastic.', '2023-05-07', 4, 37),
(69, 1, 'Dead pixels within a month of use.', '2023-05-08', 2, 38),
(70, 4, 'Great for presentations and meetings.', '2023-05-09', 20, 39),
(71, 5, 'The surface is perfect for all pen types.', '2023-05-10', 1, 41),
(72, 3, 'Functional but could be more stylish.', '2023-05-11', 20, 42),
(73, 5, 'Extremely versatile and durable.', '2023-05-12', 6, 43),
(74, 2, 'Not worth the premium price.', '2023-05-13', 1, 44),
(75, 5, 'Ideal for any professional, top quality.', '2023-05-14', 20, 45),
(76, 4, 'Useful for meetings, though a bit pricey.', '2023-05-15', 6, 46),
(77, 5, 'Custom options are fantastic and unique.', '2023-05-16', 1, 47),
(78, 2, 'Brightness is inadequate for detailed work.', '2023-05-17', 20, 48),
(79, 1, 'Broke down too quickly, not recommended.', '2023-05-18', 6, 49),
(80, 4, 'Compact and efficient, perfect for small desks.', '2023-05-19', 1, 50),
(81, 5, 'Outstanding quality, a staple in my daily work.', '2023-05-20', 2, 18),
(82, 4, 'Affordable and reliable.', '2023-05-21', 12, 12),
(83, 3, 'Decent but not as ergonomic as advertised.', '2023-05-22', 5, 5),
(84, 2, 'The color fades quickly, not satisfied.', '2023-05-23', 9, 4),
(85, 4, 'Great for home use, not for professional settings.', '2023-05-24', 8, 3),
(86, 1, 'Misleading features list, does not perform as expected.', '2023-05-25', 11,2),
(87, 5, 'Remarkable performance, a game-changer.', '2023-05-26', 7, 1),
(88, 3, 'Meets basic needs, nothing spectacular.', '2023-05-27', 19, 10),
(89, 4, 'A good tool for the price, but lacks advanced features.', '2023-05-28', 17,8),
(90, 2, 'Too heavy and uncomfortable for long use.', '2023-05-29', 14, 13),
(91, 5, 'Simply the best in the market.', '2023-05-30', 15, 14),
(92, 4, 'Efficient but noisy, gets the job done.', '2023-05-31', 13, 15),
(93, 1, 'Failed within the first few uses, poor quality.', '2023-06-01', 16, 7),
(94, 5, 'Superb quality, very durable.', '2023-06-02', 18, 9),
(95, 4, 'Easy to use and reliable.', '2023-06-03', 20, 39),
(96, 2, 'Expensive for what it offers.', '2023-06-04', 6, 22),
(97, 3, 'Average, expected better quality at this price point.', '2023-06-05', 3, 6),
(98, 4, 'Good, but requires frequent maintenance.', '2023-06-06', 4, 12),
(99, 5, 'Exceeded all my expectations.', '2023-06-07', 4, 33),
(100, 3, 'Not as robust as described.', '2023-06-08', 2, 20);

-- SupplierCategory Table
INSERT INTO SupplierCategory (SupplierID, CategoryID)
VALUES
(7, 7),
(11, 11),
(8, 8),
(9, 9),
(5, 5),
(6, 6),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(4, 4),
(14, 14),
(15, 15),
(12, 12),
(10, 10),
(2, 4),
(1, 5);

