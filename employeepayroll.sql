  
create database EmployeePayRoll  

Create Table employee_payroll (
Id int identity( 1,1) primary key,
Name varchar(20),
Salary Varchar(10),
StartDate varchar(10) 
)

insert into employee_payroll (Name, Salary, StartDate) values ('Bunny', '10000', '25-4-2011')

insert into employee_payroll (Name, Salary, StartDate) values ('Sunny', '5000', '25-4-2021')

insert into employee_payroll (Name, Salary, StartDate) values ('BunnySunny', '15000', '12-3-2020')

insert into employee_payroll (Name, Salary, StartDate) values ('Bunty', '100', '15-6-2019')

insert into employee_payroll (Name, Salary, StartDate) values ('Honey', '1000', '15-6-2018')

select * from employee_payroll

Select Salary from employee_payroll where Name='bunny'

Select Salary from employee_payroll where Startdate between ('1-1-2018') and ('24-8-2021')

 alter table employee_payroll ADD Gender varchar(2)

  Update employee_payroll

  set Gender='M' where name = 'Bunny' or name = 'Sunny' or name = 'BunnySunny' or name = 'Bunty'  

   Update employee_payroll

  set Gender='F' where name = 'Honey'

 



