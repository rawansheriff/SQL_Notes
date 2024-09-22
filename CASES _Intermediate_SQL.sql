/*
TOPIC: CASE STATEMENT
*/

SELECT FirstName, LastName, Age,
CASE 
   WHEN Age > 30 THEN 'Old'
   ELSE 'Young'
END 
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

--- THE CASE STATEMENTS IS LIKEMAN IF FUNCTION, YOU SET CONDITIONS TO BE MET ACCORDINGLY
--- AND THE FIRST CONDITION IS ALWAYS MET FIRST REGARDLESS IF THE SECOND CONDITION HAS THE SAME CONDITION WITH A DIFFERENT OUTCOME
--- THE OUTCOME OF THE FIRST CONDITION WILL BE SET FIRST 
 
 SELECT FirstName, LastName, Age, 
 CASE 
    WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END 
 FROM EmployeeDemographics
 WHERE Age IS NOT NULL 
 ORDER BY Age

 ----- Testing the first condition with similar outcomes and showing which one will be returned first
 SELECT FirstName, LastName, Age, 
 CASE 
    WHEN Age = 38 THEN 'Stanley'
    WHEN Age > 30 THEN 'Old'
	ELSE 'Baby'
END 
 FROM EmployeeDemographics
 WHERE Age IS NOT NULL 
 ORDER BY Age

 ------ /SALARY RAISE FOR EMPLOYEES DEPENDING BY THE JOB TITLE/----
 SELECT FirstName, LastName, JobTitle, Salary,
 CASE
    WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
 FROM EmployeeDemographics
 JOIN EmployeeSalary
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

