/* SUBQUERIES in SELECT, FROM, and WHERE statement */

SELECT *
FROM EmployeeSalary

-- Subquery in Select
Select EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AS AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary 

-- How to do it with PARTITION BY 
SELECT EmployeeID, (AVG(Salary) OVER () ) AS AllAvgSalary
FROM EmployeeSalary

-- Why GROUP BY Doesn't Work
SELECT EmployeeID,Salary, AVG(Salary) AS AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary 
ORDER BY 1,2

/*
Why it doesn't work:- if you run the query above, you'll find out that it didnt give us *ALL* the average salary 
that we can get in the PARTITION BY and Also the subquery. 
*/

-- Subquery in the FROM statement 
SELECT Sub.EmployeeID, Sub.AllAvgSalary
FROM ( Select EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary 
       FROM EmployeeSalary) Sub

-- its not very reccommended to use subqueries in the from statement, its better to use a CTE or a TEMP table to be able to be more efficient

-- SUBQUERY in the WHERE statement 
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN (
		SELECT EmployeeID
		FROM EmployeeDemographics
		WHERE Age > 30
		)
-- in the WHERE statement only ONE column can be selected not like the FROM or Select Statements 

 /* if you wanted to display the age as a column in the output, you would have to join
 that table then add the column in the select statement */

