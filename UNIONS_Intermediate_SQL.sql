CREATE TABLE WareHouseEmployeeDemographics 
( EmployeeID int,
FirstName varchar (50),
LastName varchar (50),
Age int,
Gender varchar (50))

SELECT *
FROM WareHouseEmployeeDemographics;

INSERT INTO WareHouseEmployeeDemographics VALUES
(1013,'Darryl','Philbin',NULL,'Male'),
1050,'Roy', 'Anderson', 31,'Male'),
(1051,'Hidetoshi','Hasagawa', 40,'Male'),
(1052,'Val', 'Johnson',31,'Female')

SELECT *
FROM EmployeeDemographics
FULL OUTER JOIN WareHouseEmployeeDemographics
ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

-- UNION EXCLUDES DUPLICATES 
SELECT * 
FROM EmployeeDemographics
UNION
SELECT *
FROM WareHouseEmployeeDemographics

-- UNION ALL INCLUDES DUPLICATES OR DUPLICATED ROWS REGARDLESS IF IT IS A DUPLICATE OR NOT 
-- BUT THEY SHOULD BE THE SAME DATA TYPE OR RELATED FIELDS OR ELSE THE JOIN FUNCTION IS WAY MORE BETTER
SELECT * 
FROM EmployeeDemographics
UNION ALL 
SELECT *
FROM WareHouseEmployeeDemographics
ORDER BY EmployeeID

--- EVEN WHEN THE TABLES DON'T HAVE THE SAME NUMBERS OF COLUMNS YOU CAN CHOOSE WHICH FIELDS TO SELECT 

SELECT EmployeeID, FirstName, Age
FROM EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary






