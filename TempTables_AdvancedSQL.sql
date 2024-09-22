/* Temp Tables
*/

CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
1001,'HR', 45000
)

--- adding a values into the temp table from an actual table, so like subset of the table 
INSERT INTO #temp_Employee 
SELECT * 
FROM EmployeeSalary


--- Abit advanced way
DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2(
JobTitle varchar (50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)


INSERT INTO #Temp_Employee2
SELECT sal.JobTitle,COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM EmployeeDemographics dem
JOIN EmployeeSalary sal
ON dem.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT * 
FROM #Temp_Employee2

/* Stored Procedures:-  
- DROP TABLE IF EXISTS #Temp_Employee2
- when you are running a stored procedures, it will look at it and see if the table 
  exists then it deletes it and allows you to create it again
- so when you apply it you can run it as much as you want and smoothly 
*/