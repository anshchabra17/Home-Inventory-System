-- Create a Database
CREATE DATABASE HomeInventorySystem
GO

--Make it default database
USE HomeInventorySystem
GO

--Create a Schema
CREATE SCHEMA Inventory
GO

--Create Location Table
CREATE TABLE Inventory.Locations
(
    LocationID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL

)
GO

--Create Items table
CREATE TABLE Inventory.Items
(
    ItemID INT IDENTITY(1,1) PRIMARY KEY,
    ItemName NVARCHAR(100) NOT NULL,
    Category NVARCHAR(100) NOT NULL,
    PurchaseDate DATE NOT NULL, 
    WarrantyExpiryDate DATE NOT NULL ,
    Quantity INT NOT NULL CHECK (Quantity >= 0) ,
    LocationID INT NOT NULL,
    CONSTRAINT foreign_key_to_Locations_table FOREIGN KEY(LocationID) REFERENCES Inventory.Locations(LocationID),
    CONSTRAINT chk_PurchaseBeforeWarranty CHECK (PurchaseDate < WarrantyExpiryDate)

)

--Inserting some sample data
INSERT INTO Inventory.Locations
 ([Name])
  VALUES 
         ('Kitchen'),
         ('Bathroom'),
         ('Bedroom'),
         ('Living Room'),
         ('Garage'),
         ('Basement'),
         ('Dining Room'),
         ('Balcony') 
GO

--Inserting some sample data inside items table linking with Locations

INSERT INTO Inventory.Items 
( 
[ItemName],
[Category],
[PurchaseDate],
[WarrantyExpiryDate],
[Quantity],
[LocationID]) 
VALUES 
    ('Toaster', 'Kitchen Device', '2023-01-10', '2025-01-10', 1, 1),
    ('Sofa', 'Furniture', '2022-06-15', '2027-06-15', 1, 4),
    ('Vacuum Cleaner', 'Cleaning Tool', '2024-02-20', '2026-02-20', 1, 6),
    ('Dining Table', 'Furniture', '2021-11-30', '2031-11-30', 1, 7),
    ('Microwave Oven', 'Kitchen Device', '2023-08-05', '2026-08-05', 1, 1),
    ('Bed Frame', 'Furniture', '2020-07-10', '2030-07-10', 1, 3),
    ('Laptop', 'Electronics', '2023-03-01', '2025-03-01', 1, 8)
GO

--SAMPLE QUERIES

--TO VIEW ALL ITEMS OF LOCATION TABLE
SELECT [LocationID],
[Name] FROM Inventory.Locations   

--TO VIEW ALL ITEMS OF ITEMS TABLE
SELECT [ItemID],
[ItemName],
[Category],
[PurchaseDate],
[WarrantyExpiryDate],
[Quantity],
[LocationID] FROM Inventory.Items


-- Select all items with their location names:
SELECT II.ItemName , IL.Name from Inventory.Items II LEFT JOIN Inventory.Locations IL ON II.LocationID = IL.LocationID

-- Find items with warranty expiring in the next 30 days:
SELECT ItemName FROM Inventory.Items WHERE DATEDIFF(day, GETDATE(), WarrantyExpiryDate) BETWEEN 0 AND 30


-- Filter items where the warranty expiry date is within 30 days from the current date.

-- List items with quantity less than a threshold (e.g., 5):

-- Show items where quantity is below a certain number to identify low stock.

-- Search items by category:

-- Retrieve all items matching a specific category.

-- Count items by location:

-- Group items by location and count how many items each location has.

-- List all locations and the total quantity of items in each:

-- Aggregate quantities per location for inventory overview.

