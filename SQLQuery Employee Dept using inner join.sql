drop table Dep
create table Dep
(
did int,
dname varchar(25),
locatin varchar(30),
 
constraint pk_did primary key(did)
) 
select*from Dep

insert into dep values(1,'Developer','Pune')
insert into dep values(2,'Tester','Mumbai')
insert into dep values(3,'Finance','Chennai')
insert into dep values(4,'Sales','Pune')
insert into dep values(5,'HR','Mumabi')

select*from dep
drop table Employee2
create table Employee2
(
eid int,
ename varchar(20),
salary decimal,
did int,
constraint fk_dep_eid foreign key(did) references dep(did)
)
select*from Employee2
select * from Dep

Insert into Employee2 values(1,'Riya', 45000.00,5)
Insert into Employee2 values(2,'Shruti',55000.00,4)
Insert into Employee2 values(3,'Aditya',65000.00,3)
Insert into Employee2 values(4,'Amit',75000.00,2)
Insert into Employee2 values(5,'Sumit',85000.00,1)
select *from Employee2

----the below query shows the list of database in the system------
select name from Sys.Databases
---the below query show the name of the database
create database Company
select name from sys.Databases
----shows the list
select name from sys.tables

----query for table creation-----


------------------------------------------------Using Subquery-----------------------------------------------------------
--find the max salary in employee table
select max(salary) from Employee2

-- display the emp details who has max salary in emp table
--outer query                            inner/ subquery
select * from Employee2 where salary=(select max(salary) from Employee2)

-- display emp details who work in HR dept

select * from Employee2
select * from Dep
select * from Employee2 where did=
(
select did from Dep where dname='Development'
)

-- display emp details who has less salary than Rahul

select * from Employee2 where salary <
(
select salary from Employee2 where ename='Amit'
)

-- display the emp details who has less salary than the avg salary of all emps
select * from Employee2 where salary<
(
select avg(salary) from Employee2
)




--display the emp from dev dept who has less salary then the 
--avg salary of admin dept
select * from Employee2 where salary<
(
select avg(salary) from Employee2 where did=(select did from dep where dname='admin')
)
and did=(select did from Dep where dname='development')


-- display the emp details who has 2nd highest salary
select * from Employee2 where salary=
(
select max(salary) from Employee2 where salary<>
(
select max(salary) from Employee2
)
)

-----------------------------Using update and delete subquery------------------------------------------------
-- update the salary by 2000rs for emp who work in hr dept

update Employee2 set salary=salary+2000 where did in
(
select did from Dep where dname='HR'
)

-- delete the emp who work in admin dept

delete from Employee2 where did in
(
select did from Dep where dname='Admin'
)












