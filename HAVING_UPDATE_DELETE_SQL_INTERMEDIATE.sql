/* HAVING STATEMENT */

SELECT JobTitle, COUNT(Jobtitle) AS JobtitleCount
FROM EmployeeDemographics
JOIN EmployeeSalary
    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(Jobtitle) > 1

SELECT JobTitle, AVG(Salary) AS avg_sal
FROM EmployeeDemographics
JOIN EmployeeSalary
   ON  EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY avg_sal


/* UPDATING - DELETING STATEMENTS */

/* update function is: UPDATE, SET, WHERE */

SELECT * 
FROM EmployeeDemographics

UPDATE EmployeeDemographics
SET Age = 31, Gender ='Female'
WHERE EmployeeID = 1012 AND LastName = 'Flax'



SELECT *
FROM EmployeeSalary


UPDATE EmployeeSalary
SET JobTitle = 'Accountant'
WHERE EmployeeID = 1009


/* DELETE STATEMENT: DELETE FROM, WHERE*/

/* HUGE HINT: SELECT THE ROW YOURE DELETING TO PREVIEW IT BEFORE RUNNING THE DELETE STATEMENT FOR REASSURANCE 
BECAUSE THERE IS NOT AN UNDO FUNCTION FOR THIS */

SELECT *
FROM EmployeeDemographics
WHERE EmployeeID = 1005

SELECT *
FROM EmployeeDemographics

DELETE FROM EmployeeDemographics
WHERE EmployeeID = 1005





