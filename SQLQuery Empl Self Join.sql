------Using Self join-----------
create table empl
(
id int,
age int,
ename varchar(20),
salary numeric,
)
select*from empl

insert into empl values(1,23,'Riya',45000)
insert into empl values(2,27,'Shruti',50000)
insert into empl values(3,28,'sumit',55000)
insert into empl values(4,25,'Shreya',56000)
insert into empl values(5,28,'Bharat',54000)
insert into empl values(6,24,'Pranav',52000)
insert into empl values(7,22,'Anoushka',45000)
insert into empl values(8,23,'Rohit',52000)
insert into empl values(9,24,'Yash',60000)
insert into empl values(10,24,'Chandra',62000)


select e1.ename as 'earn high',e1.Salary, e2.ename as 'earn less',e2.Salary 
from empl e1,empl e2
where e1.salary>e2.salary

alter table empl add manager_id int
update empl set manager_id=10 where id in(9,8,7)
select*from empl

select e1.ename 'Empl',e2.ename as 'Manager'
from empl e1 , empl e2
where e1.manager_id=e2.id
