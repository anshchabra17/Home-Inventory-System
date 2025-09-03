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

## Reports

- Items with warranties expiring within 30 days
- Items with quantity less than 5
- Inventory grouped by location or category

