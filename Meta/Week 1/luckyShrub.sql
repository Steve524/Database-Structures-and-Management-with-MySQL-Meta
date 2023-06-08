CREATE DATABASE luckyshrub_db; 

USE luckyshrub_db;

CREATE TABLE employees (
  EmployeeID int NOT NULL,
  EmployeeName varchar(150) DEFAULT NULL,
  Department varchar(150) DEFAULT NULL,
  ContactNo varchar(12) DEFAULT NULL,
  Email varchar(100) DEFAULT NULL,
  AnnualSalary int DEFAULT NULL,
  PRIMARY KEY (EmployeeID)
);

INSERT INTO employees VALUES 
(1,'Seamus Hogan', 'Recruitment', '351478025', 'Seamus.h@luckyshrub.com',50000), 
(2,'Thomas Eriksson', 'Legal', '351475058', 'Thomas.e@ luckyshrub.com',75000), 
(3,'Simon Tolo', 'Marketing', '351930582','Simon.t@ luckyshrub.com',40000), 
(4,'Francesca Soffia', 'Finance', '351258569','Francesca.s@ luckyshrub.com',45000), 
(5,'Emily Sierra', 'Customer Service', '351083098','Emily.s@ luckyshrub.com',35000), 
(6,'Maria Carter', 'Human Resources', '351022508','Maria.c@ luckyshrub.com',55000),
(7,'Rick Griffin', 'Marketing', '351478458','Rick.G@luckyshrub.com',50000);



Select * FROM employees Where AnnualSalary >= 50000 AND Department = 'Marketing'; -- Q1

Select * FROM employees Where NOT AnnualSalary >= 50000; -- Q2

Select * FROM employees WHERE Department IN('Marketing', 'Finance', 'Legal') AND AnnualSalary < 50000; -- Q3

SELECT * FROM employees WHERE AnnualSalary < 50000 AND Department IN('Marketing', 'Finance', 'Legal'); -- Q3 correct answer

Select * FROM employees WHERE AnnualSalary BETWEEN 10000 AND 50000; -- Q4

Select * FROM employees WHERE EmployeeName LIKE 's___%'; -- Q5

