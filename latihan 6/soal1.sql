SELECT e.Nama, s.Salaries
FROM Employee AS e
RIGHT JOIN Salaries AS s ON s.EmployeeID = e.EmployeeID;

SELECT e.Nama, p.ProjectsName
FROM [dbo].[Employee] AS e
LEFT JOIN [dbo].[Projects] AS p ON e.DepartmentsID = p.DepartmentsID;

SELECT e.Nama, p.ProjectsName
FROM [dbo].[Employee] AS e
LEFT JOIN [dbo].[Projects] AS p ON e.DepartmentsID = p.DepartmentsID;