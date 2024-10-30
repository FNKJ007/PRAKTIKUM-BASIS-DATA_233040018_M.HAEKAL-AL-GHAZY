create table Departments (
 DepartmentsID int identity (1,1) primary key,
 DepartmentsName varchar (50) not null
 ); 

 create table Projects (
 ProjectsID int identity (1,1) primary key,
 ProjectsName varchar (50) not null,
 DepartmentsID int 
 foreign key (DepartmentsID) references Departments (DepartmentsID)
 on update cascade on delete cascade 
 );

create table Employee (
 EmployeeID int identity (1,1) primary key,
 Nama varchar (50) not null, 
 DepartmentsID int 
 foreign key (DepartmentsID) references Departments (DepartmentsID)
 on update cascade on delete cascade, 
 ManagerID int 
 foreign key (ManagerID) references Employee (EmployeeID)
 );

 create table Salaries (
 EmployeeID int 
 foreign key (EmployeeID) references Employee (EmployeeID)
 on update  cascade on delete cascade,
 Salaries decimal (10,2) not null
 );

 insert into [dbo].[Departments] ([DepartmentsName])
 values 
	( 'human resources'),
	('finance'),
	('IT')

insert into [dbo].[Employee] ([Nama],[DepartmentsID], [ManagerID] ) 
values 
	('haekal', 1, null),--managerHR
	('ahmad', 1, 1),
	('asep', 1, 1),
	('jajang', 1, 1),
	('jaka', 1, 1),
	('parman', 2, null),--managerFinance
	('lutfi', 2, 2),
	('angga', 2, 2),
	('hadi', 2, 2),
	('hani', 2, 2),
	('hanif', 3, null),--managerIT
	('usep', 3, 3),
	('farhan ', 3, 3),
	('kinan', 3, 3),
	('rehan', 3, 3)

insert into [dbo].[Salaries] ([EmployeeID], [Salaries])
values 
		(1, 100), --manager HR
		(2, 90),
		(3, 80),
		(4, 70),
		(5, 60),
		(6, 100), --manager finance
		(7, 90), 
		(8, 80), 
		(9, 70),
		(10, 60),
		(11, 100),--manager IT
		(12, 90),
		(13, 80),
		(14, 70),
		(15, 60)

insert into [dbo].[Projects] ([ProjectsName], [DepartmentsID])
values

