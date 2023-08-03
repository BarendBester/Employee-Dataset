
SELECT FirstName, LastName, JobTitle, Salary,
CASE 
	WHEN JobTitle = 'Marketing' THEN Salary + (Salary *.1)
	WHEN JobTitle = 'Data Analyst' THEN Salary + (Salary *.5)
	WHEN JobTitle = 'HR' THEN Salary + (Salary *.05)
	ELSE Salary + (Salary * .04)
END AS SalaryAfterRaise

FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
