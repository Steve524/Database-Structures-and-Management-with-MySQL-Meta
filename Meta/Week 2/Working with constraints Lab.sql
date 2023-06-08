CREATE DATABASE Mangata_Gallo;

USE Mangata_Gallo; 
#Task 1: Create the Clients table with the following columns and constraints.
#ClientID: INT, NOT NULL and PRIMARY KEY
#FullName: VARCHAR(100) NOT NULL
#PhoneNumber: INT, NOT NULL and UNIQUE

Create Table Clients(ClientID INT NOT NULL PRIMARY KEY, FullName VARCHAR(100) NOT NULL, PhoneNumber INT NOT NULL UNIQUE);
#or correct answer
CREATE TABLE Clients (ClientID INT PRIMARY KEY, FullName VARCHAR(100) NOT NULL, PhoneNumber INT NOT NULL UNIQUE);
Show columns from Clients;

#Task 2: Create the Items table with the following attributes and constraints:
#ItemID: INT, NOT NULL and PRIMARY KEY
#ItemName: VARCHAR(100) and NOT NULL
#Price: Decimal(5,2) and NOT NULL

Create Table Items(ItemID INT NOT NULL PRIMARY KEY, ItemName VARCHAR(100) NOT NULL, Price Decimal(5,2) NOT NULL);
#OR correct answer
CREATE TABLE Items (ItemID INT PRIMARY KEY, ItemName VARCHAR(100) NOT NULL, Price DECIMAL(5,2) NOT NULL);
Show columns from Items;

#Task 3: Create the Orders table with the following constraints.
#OrderID: INT, NOT NULL and PRIMARY KEY
#ClientID: INT, NOT NULL and FOREIGN KEY
#ItemID: INT, NOT NULL and FOREIGN KEY
#Quantity: INT, NOT NULL and maximum allowed items in each order 3 only
#COST Decimal(6,2) and NOT NULL

Create Table Orders(OrderID INT NOT NULL PRIMARY KEY, ClientID INT NOT NULL, FOREIGN KEY (ClientID) REFERENCES Clients(ClientID), ItemID INT NOT NULL, FOREIGN KEY(ItemID) REFERENCES Items(ItemID),  Quantity INT NOT NULL Check (Quantity<=3), Cost Decimal(6,2) NOT NULL);
#or correct answer
CREATE TABLE Orders ( 
OrderID INT PRIMARY KEY,  
ItemID INT NOT NULL,   
ClientID INT NOT NULL,   
Quantity INT NOT NULL CHECK (Quantity < 4),  
Cost DECIMAL(6,2) NOT NULL,  
FOREIGN KEY (ClientID) REFERENCES Clients (ClientID), 
FOREIGN KEY (ItemID) REFERENCES Items (ItemID) 
);
show columns from Orders;