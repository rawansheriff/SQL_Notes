Select * 
FROM EmployeeDemographics

SELECT * 
FROM EmployeeSalary

SELECT Gender
FROM EmployeeDemographics
GROUP BY Gender 

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender 

SELECT *
FROM EmployeeDemographics

SELECT Gender, Age, Count(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age


SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender 


SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY 1 DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY 4 ASC, 5 DESC

-- labeling the columns with numbers for easier navigations

