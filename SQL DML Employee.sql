---DML----------
create table Employee1
(
id int primary key,
name varchar (20) not null,
email varchar(40) unique,
age int check(age>=18),
salary numeric(12,2)
)

---------select command is called as DQL command and & also to fetch data we use select
----------  * indicate all columns

select *from Employee1

--------DML----->Insert 

insert into Employee1 values(1,'Riya','riyamalpani75@gmail.com',23,50000)
insert into Employee1 values(2,'Shruti','malpanishruti@gmail.com',28,65000)
insert into Employee1 values(3,'Yash','yashshah@gmail.com',25,50000)
insert into Employee1 values(4,'Shreya','bajajshreya@gmail.com',24,45000)
insert into Employee1 values(6,'Sumit','bajajsumit@gmail.com',31 ,75000)
insert into Employee1 values(7,'Amit','bajajamit@gmail.com',35 ,80000)
insert into Employee1 values(8,'Harshal','jhamwarharshal@gmail.com',36 ,75000)
insert into Employee1 values(9,'Vidhya','laddhavidhya@gmail.com',38 ,65000)
insert into Employee1 values(10,'chetna','patilchetna@gmail.com', 24,55000)
insert into Employee1 values(11,'harsha','palinitkarharsha@gmail.com',24 ,52000)
insert into Employee1 values(12,'Rutuja','malgoderutuja@gmail.com',23 ,50000)
insert into Employee1 values(13,'Aditya','malpaniaditya@gmail.com',23 ,52000)
insert into Employee1 values(15,'sneha','moresneha@gmail.com',28 ,45000)

select *from Employee1

select name,email from Employee1

---using update command-------
update Employee1 set salary=75000,age=34 where id=4

select*from Employee1

----------using delete command--------------
delete from Employee1 where id=11
delete from Employee1 where age<18


------DQL Commands--------------
------Select/get/fetch data from the table----------------

--------alias to the column and to the table--------------

select*from Employee1
select name as 'Employee Name',email as'Email Id' from Employee1

select emp.name,emp.email,emp.salary from Employee1 emp 
select emp.*from Employee1 emp

----------------Using Operators----------------
 select name from Employee1 where age>28
 select* from Employee1 where age>28

 -- and --> all the condtions should be true
-- combine all the conditions & fetch matched data

select * from Employee1 where salary<28000  and age<23
-- OR  --> either one is true

select * from Employee1 where salary='55000' or salary='75000'

--between and --> range - when you want to fetch records between range

select * from Employee1 where salary between 23000 and 25000

select * from Employee1 where age between 20 and 25

-- in caluse  --> match the multiple selection

select * from Employee1 where id in(1,2,3,6,8)

select * from Employee1 where age in(21,22,23,24,26)

----like clause in SQL-----
----start with r end with any letters
select* from Employee1 where name like 'r%'

--start with any letter and end with a
select * from Employee1 where name like '%a'

----the name which contains i in it
select *from Employee1 where name like '%i%'

---the name which end with r or a
select *from Employee1 where name like '%[ra]'

select * from Employee1 where name like '%[rat]%'

---range
select*from Employee1 where name like '[a-r]%'

----underscore is used to define specific letters
--match the exact count of letters

select*from Employee1 where name like 'R___'
select*from Employee1 where name like '_____i'
 
 -----order by clause----

 select * from Employee1 order by name

 select *from Employee1 order by name desc

 select *from Employee1 order by salary

 select *from Employee1 order by salary desc

 select * from Employee1 order by name,email

select * from Employee1 order by age desc

---Limiting the records in SQL using TOP,OOFSET and Fetch

--first 5 records
select top 5*from Employee1 order by id

--display 3 employee with highest to lowest salary 
select top 5*from Employee1 order by salary desc

--display employee who have highest salary in the table
select top 1*from Employee1 order by salary desc

--display emp who have lowest salary in the table
select top 1*from Employee1 order by salary


-------Last 5 Records------

select top 5* from Employee1 order by id desc

--------percentage

select*from Employee1 order by salary desc

select top 40 percent * from Employee1

--tie---match data based on column that we specify in order by

select top 3 with ties *from Employee1 order by salary desc


--------------Aggregate functions in SQL-----------------

select *from Employee1

---max salary,price,age

select max(salary) as 'max salary' from Employee1

select min(salary) as 'min salary' from Employee1

select avg (salary) as 'max salary' from Employee1

select sum(salary) as 'max salary' from Employee1

select count(id) as 'total count' from Employee1

select count (distinct id) as 'total count' from Employee1

-------------------------------------JOINS IN SQL-------------------------------------------------------------------
select*from Employee1
select*from Dept
drop table Dept
create table Dept
(
did int primary key,
danme varchar (25)
)
insert into Dept values(101,'HR'),(102,'Admin'),(103,'Development'),(104,'Testing'),(105,'Sales')
alter table employee1 add did int
alter table employee1 add constraint pk_fk_dept_emp foreign key(did)references Dept(did)

update Employee1 set did=101 where id in(1,13)
update Employee1 set did=102 where id in(2,12)
update Employee1 set did=103 where id in(3,4,5,6,7)
update Employee1 set did=104 where id in(8,9)
update Employee1 set did=105 where id in(10,11)

select*from Employee1
select*from Dept

select e.*,d.danme
from Employee1 e
inner join Dept d on d.did=e.did



--------------------------------------------USING SUBQUERY--------------------------------------------------------------------
--find the max salary in employee table
select max(salary) from Employee1

-- display the emp details who has max salary in emp table
--outer query                            inner/ subquery
select * from Employee1 where salary=(select max(salary) from Employee1)

-- display emp details who work in HR dept

select * from Employee1
select * from Dept
select * from Employee1 where did=
(
select did from Dept where Dept='Development'
)

-- display emp details who has less salary than Rahul

select * from Employee1 where salary <
(
select salary from Employee1 where name='Amit'
)

-- display the emp details who has less salary than the avg salary of all emps
select * from Employee1 where salary<
(
select avg(salary) from Employee1
)

--display the emp from dev dept who has less salary then the 
--avg salary of admin dept
select * from Employee1 where salary<
(
select avg(salary) from Employee1 where did=(select did from dept where dname='admin')
)
and did=(select did from Dept where dname='development')


-- display the emp details who has 2nd highest salary
select * from Employee where salary=
(
select max(salary) from Employee where salary<>
(
select max(salary) from Employee
)
)


---------------------------------------------USING VIEWS--------------------------------------------------------------------
select*from Employee1

create view Emp_from_23 as
select*from Employee1 where age=23

--adding new view
create view Emp_From_Dev as 
select name,email,age,salary from Employee1 where did=(select did from Dept where danme='Development')

--modify the view
alter view Emp_From_Dev as 
select name,email,age,salary,did from Employee1 where did=(select did from dept where 
danme='Development')

--to run the view
--fetch
select *from Emp_from_23
select*from Emp_From_Dev

--drop the view 
drop view Emp_Desc_salary

----------------------------------STORED PROCEDURE------------------------------
select*from Employee1
--syntax
--to create procedure
--create proc SP_Emp_Select
--as begin
--return 
--end

create proc SP_Emp_Select
as begin
select*from Employee1
return 
end
exec SP_Emp_Select

create proc SP_Emp_age(@age int)
as begin
select*from Employee1 where age=@age
return 
end

exec SP_Emp_age
@age=23

-- DML
create proc SP_Insert_Emp
(
@id int,
@name varchar(20),
@email varchar(20),
@age int,
@salary numeric(12,2),
@did int
)
as begin
insert into Employee1 values(@id,@name,@email,@age,@salary,@did)
return
end

exec SP_Insert_Emp
@id=4,
@name='Test',
@email='test@gmail.com',
@age=22,
@salary=34567,
@did=110



create proc SP_Update_Emp
(
@id int,
@name varchar(20),
@email varchar(20),
@age int,
@did int,

)
as begin
update Employee1 set name=@name,email=@email,age=@age,salary=@salary,
did=@did
return
end


exec SP_Update_Emp
@id=12,
@name='Test2',
@email='test@gmail.com',
@age=23,
@salary=34567,
@did=103



create proc SP_Update_age
(@city varchar(20), @id int)
as begin
update Employee1 set age=@age where id=@id
return 
end

exec SP_Update_age
@id=12,
@city=44


create proc Sp_Delete_Emp
(@id int)
as begin
delete from Employee where id=@id
return 
end

exec Sp_Delete_Emp
@id=12

---------------------------------USER DEFINED FINCTIONS---------------------------------------------
In SQL every function must return a value



-- addition of 2 numbers using SQL function
-- scalar function
create function addition(@a int,@b int)
returns int
as begin
--declare variable in SQL
declare @c int
-- code to exe
set @c=@a+@b
return @c
end

-- database object
select dbo.addition(10,20) as 'sum'


--scalar function

create function GetEmpName(@id int)
returns varchar(20)
as begin
return( select name from Employee1 where id=@id)
end

select dbo.GetEmpName(1) as 'Emp name'


-- multi value function begin & end keyword not need to write

create function GetEmpByDept(@did int)
returns table
as
return (select * from Employee1 where did=@did)


select * from dbo.GetEmpByDept(103)



















