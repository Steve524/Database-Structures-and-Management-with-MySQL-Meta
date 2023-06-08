CREATE DATABASE littlelemon_db;

USE littlelemon_db;

CREATE TABLE MenuItems (
  ItemID int NOT NULL,
  Name varchar(200) DEFAULT NULL,
  Type varchar(100) DEFAULT NULL,
  Price int DEFAULT NULL,
  PRIMARY KEY (ItemID)
);

INSERT INTO MenuItems VALUES
(1,'Olives','Starters',5),
(2,'Flatbread','Starters',5),
(3,'Minestrone','Starters',8),
(4,'Tomato bread','Starters',8),
(5,'Falafel','Starters',7),
(6,'Hummus','Starters',5),
(7,'Greek salad','Main Courses',15),
(8,'Bean soup','Main Courses',12),
(9,'Pizza','Main Courses',15),
(10,'Greek yoghurt','Desserts',7),
(11,'Ice cream','Desserts',6),
(12,'Cheesecake','Desserts',4),
(13,'Athens White wine','Drinks',25),
(14,'Corfu Red Wine','Drinks',30),
(15,'Turkish Coffee','Drinks',10),
(16,'Turkish Coffee','Drinks',10),
(17,'Kabasa','Main Courses',17);

CREATE TABLE LowCostMenuItems
(ItemID INT, Name VARCHAR(200), Price INT, PRIMARY KEY(ItemID));

#Task 1: Find the minimum and the maximum average prices at which the customers can purchase food and drinks.
#Hint: In this task, you must write subqueries using the FROM clause. Your subquery would find the average prices of menu items by their type. 
#The subquery result will be the input for the outer query to find the minimum and maximum average prices.
Select Type, avg(Price) FROM MenuItems group by TYPE;
#Answers
SELECT Type, AVG(Price) AS avgPrice 
FROM MenuItems 
GROUP BY Type;

SELECT ROUND(MIN(avgPrice),2), ROUND(MAX(avgPrice),2) 
FROM (SELECT Type,AVG(Price) AS avgPrice
FROM MenuItems 
GROUP BY Type) AS aPrice;


#Task 2: Insert data of menu items with a minimum price based on the 'Type' into the LowCostMenuItems table.
#Hint: In this task, you must write subqueries in INSERT statements. Your subquery would find the details of 
#menu items with a minimum price based on the 'Type' of menu item. In other words, GROUP BY Type. Then you can 
#insert the data retrieved from the subquery into the LowCostMenuItems table using an INSERT INTO SELECT statement.

#ELECT * FROM MenuItems WHERE Price = (SELECT Price FROM Menus, MenuItems WHERE Menus.ItemID = MenuItems.ItemID AND MenuItems.Type = 'Starters' AND Cuisine = 'Italian'); 
#Insert INTO LowCostMenuItems SELECT Type, min(Price) From MenuItems group by TYPE;
#Insert INTO LowCostMenuItems SELECT min(LowCostMenuItems.Price) From LowCostMenuItems, MenuItems group by MenuItems.TYPE;
#Insert INTO LowCostMenuItems SELECT 

 #Select Type, Min(Price) FROM MenuItems group by TYPE Where ;
 
 #Insert INTO LowCostMenuItems (ItemID, Name, Price) Select ItemID, Name, MIN(Price) FROM MenuItems GROUP BY MenuItems.Type;
 
 #Insert INTO LowCostMenuItems (ItemID, Name, Price) Values (ItemID, name, (SELECT Type, Min(Price) From MenuItems GROUP BY MenuItems.Type));

#Insert INTO LowCostMenuItems Values ((SELECT Type, Min(Price) From MenuItems GROUP BY MenuItems.Type),ItemID, name);
#Insert INTO LowCostMenuItems SELECT * From MenuItems WHERE Price = (SELECT Type, MIN(Price) FROM MenuItems)GROUP BY Type;
#any using the eclude 
Insert INTO LowCostMenuItems SELECT ItemID, Name, Price From MenuItems WHERE Price = ANY(SELECT MIN(Price) FROM MenuItems GROUP BY Type);
#Answer
INSERT INTO LowCostMenuItems 
SELECT ItemID,Name,Price 
FROM MenuItems 
WHERE Price =ANY(SELECT MIN(Price) FROM MenuItems GROUP BY Type);


Show Columns From LowCostMenuItems; 
Select * From LowCostMenuItems;


#Task 3: Delete all the low-cost menu items whose price is more than the minimum price of menu items that have a price between $5 and $10.
#Hint: You need to write subqueries in DELETE statements in this task. Your subquery will be placed in the WHERE clause of the DELETE statement 
#to find the minimum prices of menu items that have a price between $5 and $10. Use the ALL operator in the outer query to find matches from the 
#values returned from the subquery. Delete those records with matching prices from the LowCostMenuItems table.

Delete From LowCostMenuItems 
WHERE Price > ALL(SELECT Min(Price) as mp 
FROM MenuItems GROUP BY Type 
Having mp between 5 AND 10);

#answer
DELETE FROM LowCostMenuItems 
WHERE Price > ALL(SELECT MIN(Price) as p 
FROM MenuItems 
GROUP BY Type 
HAVING p BETWEEN 5 AND 10);
