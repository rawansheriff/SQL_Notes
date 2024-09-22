/* Aliasing
*/
 SELECT *
 FROM EmployeeDemographics

 SELECT FirstName AS Fname
 FROM EmployeeDemographics

-- ADDING TWO COLUMNS TOGETHER
SELECT FirstName + ' ' + LastName AS FullName
FROM EmployeeDemographics

SELECT AVG(Age) AS AvgAge
FROM EmployeeDemographics

-- WITH JOINS
SELECT Demo.EmployeeID
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal 
ON Demo.EmployeeID = Sal.EmployeeID 

-- WITH DOUBLE/ NESTED JOINS

SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.JobTitle, Ware.Age
FROM EmployeeDemographics Demo
LEFT JOIN EmployeeSalary Sal
    ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN WareHouseEmployeeDemographics Ware
    ON Demo.EmployeeID = Ware.EmployeeID

/* PARTITION BY */

SELECT FirstName, LastName, Age, Gender,
      COUNT(Gender) OVER (PARTITION BY Gender) AS GenderCount
FROM EmployeeDemographics Demo 
JOIN EmployeeSalary Sal 
ON Demo.EmployeeID = Sal.EmployeeID

SELECT *
FROM EmployeeDemographics

SELECT *
FROM EmployeeSalary

SELECT FirstName, LastName, Gender, Salary
 , COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM EmployeeDemographics Dem
JOIN EmployeeSalary Sal
  ON Dem.EmployeeID = Sal.EmployeeID

SELECT Gender, COUNT(Gender) AS GenderCount
FROM EmployeeDemographics Dem
JOIN EmployeeSalary Sal
  ON Dem.EmployeeID = Sal.EmployeeID
GROUP BY Gender
