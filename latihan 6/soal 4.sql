SELECT e.Nama, s.Salaries
FROM Employee AS e
RIGHT JOIN Salaries AS s ON s.EmployeeID = e.EmployeeID;