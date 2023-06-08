CREATE DATABASE Mangata_Gallo;

USE Mangata_Gallo;

#Objective Create the 'Staff' table in Mangata and Gallo database. and Make the necessary changes to the table structure.

#Task 1
#Write a SQL statement that creates the Staff table with the following columns.
#StaffID: INT
#FullName: VARCHAR(100)
#PhoneNumber: VARCHAR(10)



Create Table Staffs(StaffID INT, FullName VARCHAR(100), PhoneNumber VARCHAR(10));
#answer
#CREATE TABLE Staff (StaffID INT, FullName VARCHAR(100), PhoneNumber VARCHAR(10));
SHOW COLUMNs from Staffs;

#Task 2
#Write a SQL statement to apply the following constraints to the Staff table:
#StaffID: INT NOT NULL and PRIMARY KEY
#FullName: VARCHAR(100) and NOT NULL
#PhoneNumber: INT NOT NULL

ALTER TABLE Staffs MODIFY StaffID INT NOT NULL PRIMARY KEY, MODIFY FullName VARCHAR(100) NOT NULL, MODIFY PhoneNumber INT NOT NULL;
#answer
#ALTER TABLE Staffs MODIFY StaffID INT PRIMARY KEY, MODIFY FullName VARCHAR(100) NOT NULL, MODIFY PhoneNumber INT NOT NULL; 
SHOW COLUMNs from Staffs;

#Task 3
#Write a SQL statement that adds a new column called 'Role' to the Staff table with the following constraints:
#Role: VARCHAR(50) and NOT NULL

ALTER TABLE Staffs ADD Column Role VARCHAR(50) NOT NULL;
#answer
#ALTER TABLE Staff ADD COLUMN Role VARCHAR(50) NOT NULL;
SHOW COLUMNs from Staffs;

#Task 4
#Write a SQL statement that drops the Phone Number column from the 'Staff' table.

ALTER TABLE Staffs DROP Column PhoneNumber;
#answer
#ALTER TABLE Staff DROP COLUMN PhoneNumber;
SHOW COLUMNs from Staffs;