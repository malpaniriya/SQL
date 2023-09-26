----------LAB ASSESSMENT--------------------------------
drop table Em

create table Em
(
Em_id int,
Em_age int,
Em_name varchar(25),
Em_Salary decimal,
Em_dept_name varchar(30),
Em_Gender varchar(15),
Em_Location varchar(20),
constraint pk_em_id primary key(Em_id)
)
select*from Em
Insert into Em values(1,23,'Riya',45000.00,'Developer','Female','Pune')
Insert into Em values(2,24,'Anuja',55000.00,'Tester','Female','Mumbai')
Insert into Em values(3,25,'Shruti',65000.00,'Lawyer','Female','Pune')
Insert into Em values(4,26,'Aditya',35000.00,'Developer','Male','Banglore')
Insert into Em values(5,27,'Amit',75000.00,'Cloud Engg','Male','Pune')

--1)Write query the all employee whose salary is more than 25000 and less than 50,000

-------------------------------------------------------------------------------------
--2)Write query to find out all employee whose name start with s
select *from Em where Em_name like 's%'

-------------------------------------------------------------------------------------
--3)Find out the number of employee from each department.



--------------------------------------------------------------------------------------
--4)Find out maximum salary from employee
select max(Em_Salary) as 'max salary' from Em
----------------------------------------------------------------------------------------
--5) Find out the gender wise employee count


----------------------------------------------------------------------------------------
--6) Write query to find out the employee who is working in mumbai location and salary is more than 40000

-----------------------------------------------------------------------------------------------
--7)write query to calculate the pf amount for each employee

------------------------------------------------------------------------------------------------
--8)write query to update the designation of employee as manager whose salary more than 50000



