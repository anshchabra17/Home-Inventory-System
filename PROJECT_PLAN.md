# Home Inventory Management System – Project Plan

## Core Features & Goals

- Item management (add, update, delete, search)
- Location management (add, edit, remove rooms)
- Inventory and maintenance reports

## User Stories

- As a user, I want to add new items to my home inventory and assign them to locations.
- As a user, I want to update details of items when they change.
- As a user, I want to delete items I’ve disposed of or no longer own.
- As a user, I want to search for items by name, category, or location.
- As a user, I want to view which items’ warranties are expiring soon.
- As a user, I want to see which items are running low so I can restock.
- As a user, I want to group my inventory by rooms or categories for easy lookup.

## Data Entities and Attributes

- **Item**
  - ItemId (int)
  - Name (string)
  - Category (string)
  - PurchaseDate (date)
  - WarrantyExpiryDate (date)
  - Quantity (int)
  - LocationId (int) — references Location

- **Location**
  - LocationId (int)
  - Name (string) (e.g., Kitchen, Bedroom)

# Reports

- Items with warranties expiring within 30 days
- Items with quantity less than 5
- Inventory grouped by location or category

# User Experiance

Main Menu
1. Manage Items
2. Manage Locations
3. View Reports
4. Exit

If user chooses "Manage Items":
  - Add Item
  - View Items
  - Update Item
  - Delete Item
  - Search Items
  - Back to Main Menu

  If user chooses "Manage Locations":
  - Add Location
  - Delete Location
  - View Locations
  - Back to Main Menu

  If user chooses "View Reports":
  - Items Near Warranty Expiry
  - Items Low in Quantity
  - Items by Location or Category
  - Back to Main Menu

  ## Tasks Needed to perform to acheive this
- Item Management

Add a new item (user enters properties)
Edit/update an existing item
Delete item
View list of all items
Search/filter items by name/category/location

- Location (Room) Management

Add new room/location
Delete a room/location
View all rooms/locations

- Reporting

Show items whose warranty is expiring in the next X days (e.g., 30)
Show items with quantity below threshold (e.g., less than 5)
Group items by location (show all items by room)
Group items by category (show all items by type)

## Classes

# Item

ItemId: int (unique, primary key)
Name: string
Category: string
PurchaseDate: DateTime
WarrantyExpiryDate: DateTime
Quantity: int
LocationId: int (foreign key reference to Location)

# Location

LocationId: int (unique, primary key)
Name: string (e.g., Kitchen, Bedroom)

# SQl Tables

Table: Locations
  LocationId INT PRIMARY KEY
  Name NVARCHAR(100)

Table: Items
  ItemId INT PRIMARY KEY
  Name NVARCHAR(100)
  Category NVARCHAR(50)
  PurchaseDate DATE
  WarrantyExpiryDate DATE
  Quantity INT
  LocationId INT -- foreign key references Locations(LocationId)