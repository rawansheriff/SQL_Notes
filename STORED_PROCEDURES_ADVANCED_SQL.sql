/* TOPIC: STORED PROCEDURES
*/

CREATE PROCEDURE TEST 
AS 
SELECT * 
FROM EmployeeDemographics

--- TO EXECUTE THE STORED PROCEDURE
EXEC TEST 



-- MORE COMPLICATED QUERY 
CREATE PROCEDURE Temp_Employee
AS
CREATE TABLE #temp_employee(
JobTitle varchar (100),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_employee 
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM EmployeeDemographics EMP
JOIN EmployeeSalary SAL
ON EMP.EmployeeID = SAL.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_employee

EXEC Temp_Employee @JobTitle = 'Salesman'
