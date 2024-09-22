/* CTEs
*/

WITH CTE_Employee AS
(SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender,
AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary
FROM EmployeeDemographics dem
JOIN EmployeeSalary sal
    ON dem.EmployeeID = sal.EmployeeID
WHERE Salary > 45000
)
SELECT FirstName, AvgSalary
FROM CTE_Employee

