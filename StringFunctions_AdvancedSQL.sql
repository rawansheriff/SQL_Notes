-- the TRIM function trims space from both sides 
SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

-- this trims the space on the left side 
SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

-- this trims the space on the right side 
SELECT EmployeeID , RTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors


-- Using Replace 
SELECT LastName, REPLACE(LastName,'- Fired', '' ) AS LastNameFixed 
FROM EmployeeErrors

-- Using Substring - it selects specific indexes based on the column you choose 
SELECT  err.firstname,SUBSTRING(err.firstname, 1,3),dem.firstname, SUBSTRING(dem.firstname,1,3)
FROM EmployeeErrors err
join EmployeeDemographics dem
on SUBSTRING(err.firstname, 1, 3) = SUBSTRING(dem.FirstName, 1,3) 

-- best to use a substring for more accuracy in such columns related data:-
-- Gender 
-- Age 
-- DOB
-- Lastname


-- Upper and lower 
SELECT FirstName, UPPER(FirstName) AS UpperName , LastName, LOWER(LastName) 
FROM EmployeeErrors
 


