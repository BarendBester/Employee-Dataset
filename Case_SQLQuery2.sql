SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old' 
	WHEN Age BETWEEN 20 AND 30 THEN 'Great Age' 
	ELSE 'Young'
	END

FROM SQLTutorial.dbo.EmployeeDemographics
WHERE AGE is NOT NULL
ORDER BY Age
