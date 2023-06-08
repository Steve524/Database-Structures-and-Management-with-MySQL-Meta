CREATE DATABASE Lucky_Shrub_wk2;

USE Lucky_Shrub_wk2;

CREATE TABLE Orders (OrderID INT NOT NULL PRIMARY KEY, ClientID VARCHAR(10), ProductID VARCHAR(10), Quantity INT, Cost DECIMAL(6,2));

INSERT INTO Orders (OrderID, ClientID, ProductID, Quantity, Cost) VALUES (1, "Cl1", "P1", 10, 500), (2, "Cl2", "P2", 5, 100), (3, "Cl3", "P3", 20, 800), (4, "Cl4", "P4", 15, 150), (5, "Cl3", "P3", 10, 450), (6, "Cl2", "P2", 5, 800), (7, "Cl1", "P4", 22, 1200), (8, "Cl1", "P1", 15, 150);

#Objective Insert new records of data using the REPLACE statement. and Update records with new data using the REPLACE statement.

#Write a SQL REPLACE statement that inserts two new orders with the following details:

#Once you have executed the SQL statement, you can select all available data in the Orders table. The expected output result should be the same as the following screenshot (assuming that you have created and populated the tables correctly.)

Replace into Orders (OrderID, ClientID, ProductID, Quantity, Cost) Values(9, "Cl1", "P1", 10, 5000);
Replace into Orders (OrderID, ClientID, ProductID, Quantity, Cost) Values(10,"Cl2", "P2", 5, 100);
#or
REPLACE INTO Orders (OrderID, ClientID, ProductID, Quantity, Cost) VALUES (9, "Cl1", "P1", 10, 5000), (10, "Cl2", "P2", 5, 100);

Select * From Orders; 

#Task 2: Lucky Shrub have noticed that the cost of order number 9 is $5000. This is a mistake. The order must cost $500. 
#You must help them to change it to $500 by writing a relevant REPLACE statement. 
#Once you have executed the SQL statement, select all available data from the Orders table.

Replace into Orders Set OrderID = 9, ClientID = "Cl1", ProductID = "P1", Quantity = 10, Cost=500;
Select * From Orders; 