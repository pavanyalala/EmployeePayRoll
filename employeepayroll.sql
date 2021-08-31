  
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

  alter table employee_payroll alter COLUMN Salary int
 
 SELECT SUM(Salary) as Total_Salary FROM employee_payroll WHERE Gender = 'F' GROUP BY Gender

 SELECT SUM(Salary) as Total_Salary FROM employee_payroll WHERE Gender = 'M' GROUP BY Gender

 SELECT AVG(Salary) as Average_Salary FROM employee_payroll WHERE Gender = 'F' GROUP BY Gender

 SELECT AVG(Salary) as Average_Salary FROM employee_payroll WHERE Gender = 'M' GROUP BY Gender

 SELECT MIN(Salary) as Minimum_Salary FROM employee_payroll WHERE Gender = 'F' GROUP BY Gender

 SELECT MIN(Salary) as Minimum_Salary FROM employee_payroll WHERE Gender = 'M' GROUP BY Gender

 SELECT MAX(Salary) as Maximum_Salary FROM employee_payroll WHERE Gender = 'F' GROUP BY Gender

 SELECT MAX(Salary) as Maximum_Salary FROM employee_payroll WHERE Gender = 'M' GROUP BY Gender

 SELECT COUNT(Salary) as Female_Employees FROM employee_payroll WHERE Gender = 'F' GROUP BY Gender

 SELECT COUNT(Salary) as Male_Employees FROM employee_payroll WHERE Gender = 'M' GROUP BY Gender

 /*Uc8 Add colums like employee_phno,Address,Dept */

 ALTER TABLE employee_payroll
 ADD PhoneNumber varchar(10)

 ALTER TABLE employee_payroll
 ADD Address varchar(20) NOT NULL DEFAULT ('Hyderabad')

 ALTER TABLE employee_payroll
 ADD Department VARCHAR (20) NOT NULL DEFAULT ('CompanyEmployee')

 Update employee_payroll
 set PhoneNumber = '9999999999',Address = 'Chennai',Department = 'Accounts' where Name = 'Bunny'

 Update employee_payroll
 set PhoneNumber = '8888888888',Address = 'Hyderabad',Department = 'HR' where Name = 'Sunny'

 Update employee_payroll
 set PhoneNumber = '9999999777',Address = 'Mumbai',Department = 'Manager' where Name = 'BunnySunny'

 Update employee_payroll
 set PhoneNumber = '9999999666',Address = 'Kerala',Department = 'Developer' where Name = 'Bunty'

 Update employee_payroll
 set PhoneNumber = '9999999555',Address = 'Vizag',Department = 'Data Analyst' where Name = 'Honey'

 /*UC-9 Add Payment columns*/

  alter table employee_payroll
  Add BasicPay float

  alter table employee_payroll
  Add Deductions float

  alter table employee_payroll
  Add TaxablePay float

  alter table employee_payroll
  Add IncomeTax float

  alter table employee_payroll
  Add NetPay float

  Update employee_payroll 
  set BasicPay=4000 ,Deductions=500, TaxablePay=200,IncomeTax=300,NetPay=3500 where name='Bunny'

  Update Employee_Payroll 
  set BasicPay=5000 ,Deductions=500, TaxablePay=200,IncomeTax=300,NetPay=4500 where name='Sunny'

  Update Employee_Payroll 
  set BasicPay=50000 ,Deductions=5000, TaxablePay=2000,IncomeTax=3000,NetPay=45000 where name='BunnySunny'
 
  Update Employee_Payroll 
  set BasicPay=40000 ,Deductions=5000, TaxablePay=2000,IncomeTax=3000,NetPay=35000 where name='Bunty'

  Update Employee_Payroll 
  set BasicPay=10000 ,Deductions=500, TaxablePay=200,IncomeTax=300,NetPay=9500 where name='Honey'

  /*UC-10*/

insert into employee_payroll (Name, Salary, StartDate, Gender, PhoneNumber, Address, Department, BasicPay, Deductions, TaxablePay, IncomeTax, Netpay) values ('Terisa', '20000', '10-4-2019', 'F', '9988774455', 'Hyd', 'Sales', '15000', '1000', '500', '500', '14000')

insert into employee_payroll (Name, Salary, StartDate, Gender, PhoneNumber, Address, Department, BasicPay, Deductions, TaxablePay, IncomeTax, Netpay) values ('Terisa', '25000', '10-4-2019', 'F', '9988774455', 'Hyd', 'Marketing', '14000', '1000', '500', '500', '13000')


Select * from employee_payroll



