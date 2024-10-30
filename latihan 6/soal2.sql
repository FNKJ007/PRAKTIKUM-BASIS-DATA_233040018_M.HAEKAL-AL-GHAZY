alter table [dbo].[Employee] 
drop column [ManagerID]

alter table [dbo].[Employee] 
drop column [DepartmentsID]



alter table [dbo].[Employee]
add ManagerID int foreign key (ManagerID)
references Employee (EmployeeID)

alter table [dbo].[Employee]
add DepartmentsID int foreign key (DepartmentsID)
references Employee (EmployeeID)

