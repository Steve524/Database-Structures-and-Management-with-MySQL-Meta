CREATE DATABASE IF NOT EXISTS little_lemon; 

USE little_lemon; 

CREATE TABLE Starters(StarterName VARCHAR(100) NOT NULL PRIMARY KEY, Cost Decimal(3,2), StaterType VARCHAR(100) DEFAULT 'Mediterranean');

SELECT * FROM Starters

SHOW COLUMNS FROM Starters

replace INTO Starters(StarterName, Cost, StaterType) VALUES ("Cheese Bread", 9.5, "Indian"); -- Q1

##REPLACE INTO Starters SET StarterName = "Cheese Bread", Cost = 9.75, StaterType = "Indian");

replace INTO Starters(StarterName, Cost, StaterType) VALUES ("Cheese Bread", 9.75, "Indian"); -- Q1