SELECT e.Nama, p.ProjectsName
FROM [dbo].[Employee] AS e
LEFT JOIN [dbo].[Projects] AS p ON e.DepartmentsID = p.DepartmentsID;
