/* 
Inner Joins, Full/Left/Right/Outer Joins
*/

SELECT * 
FROM EmployeeDemographics

SELECT * 
FROM EmployeeSalary

INSERT INTO EmployeeSalary VALUES
(1010, NULL, 47000),
(NULL,'Salesman',43000)

-- AT THE TOP I INSERTED MISSING NULL VALUES TO THE DATA TO START PRACTICING

--NOW I WILL START JOINING THE DATA

SELECT * 
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalarY.EmployeeID

-- OUTER JOIN FUll
SELECT * 
FROM EmployeeDemographics 
FULL Outer Join EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalarY.EmployeeID

-- Left Outer Join/ Left Join

SELECT * 
FROM EmployeeDemographics 
Right Outer Join EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


-- Joining using selected fields in the SELECT statement

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics 
Right Outer Join EmployeeSalary
On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics 
Left Outer Join EmployeeSalary
On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- NOW CHECKING WHO HAS THE HIGHEST SALARY AND DEDUCT 1000 FROM IT 

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC

-- ANSWER IS: DWIGHT SCHRUTE WILL GET A DEDCUTION 

-- Another use case -- AVG salesman salary 

SELECT JobTitle, AVG(Salary) AS avg_sal
From EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle
ORDER BY avg_sal;




