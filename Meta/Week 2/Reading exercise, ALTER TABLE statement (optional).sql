CREATE DATABASE IF NOT EXISTS little_lemon; 

USE little_lemon;

#3. Create a new table in the Little Lemon restaurant database to store information about customers' orders. The new “Food Orders” table includes three columns
#Order ID,
#Quantity, 
#and Cost 
Create Table FoodOrders(OrderID INT, Quantity INT, Cost Decimal(4,2));

SHOW COLUMNS FROM FoodOrders;

#Task 1: Use the ALTER TABLE statement with MODIFY command to make the OrderID the primary key of the 'FoodOrders' table. 

ALTER TABLE FoodOrders Modify OrderID INT Primary KEY,Modify Quantity INT,Modify Cost Decimal(4,2);
#Answers
ALTER TABLE FoodOrders MODIFY OrderID INT PRIMARY KEY;
SHOW COLUMNS FROM FoodOrders;

#Task 2: Apply the NOT NULL constraint to the quantity and cost columns.

ALTER TABLE FoodOrders Modify Quantity INT NOT NULL ,Modify Cost Decimal(4,2) NOT NULL;
#answers
ALTER TABLE FoodOrders MODIFY Quantity INT NOT NULL, MODIFY Cost decimal(4,2) NOT NULL;
SHOW COLUMNS FROM FoodOrders;

#Task 3: Create two new columns, OrderDate with a DATE datatype and CustomerID with an INT datatype. 
#Declare both must as NOT NULL. Declare the CustomerID as a foreign key in the FoodOrders table to reference 
#the CustomerID column existing in the Customers table.
ALTER TABLE FoodOrders ADD COLUMN OrderDate DATE, ADD COLUMN CustomerID INT;
SHOW COLUMNS FROM FoodOrders;
ALTER TABLE FoodOrders Modify OrderDate DATE NOT NULL, Modify CustomerID INT NOT NULL;
SHOW COLUMNS FROM FoodOrders;
ALTER TABLE FoodOrders add FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);
SHOW COLUMNS FROM FoodOrders;

#ANSWER
ALTER TABLE FoodOrders ADD COLUMN OrderDate DATE NOT NULL, 
ADD COLUMN CustomerID INT NOT NULL, 
ADD FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID);

#Task 4: Use the DROP command with ALTER statement to delete the OrderDate column from the 'FoodOrder' table. 
ALTER TABLE FoodOrders DROP Column OrderDate;
SHOW COLUMNS FROM FoodOrders;

#ANSWERS
ALTER TABLE FoodOrders DROP COLUMN OrderDate;
#Task 5: Use the CHANGE command with ALTER statement to rename the column Order_Status in the OrderStatus table to DeliveryStatus. 
ALTER TABLE OrderStatus CHANGE Order_status DeliveryStatus VARCHAR(15);


#Task 6: Use the RENAME command with ALTER statement to change the table name from OrderStatus to OrderDeliveryStatus.
#answer
ALTER TABLE OrderStatus RENAME OrderDeliveryStatus;