create table Dept
(
did int,
dname varchar(10),
constraint pk_dept primary key(did)
)


Drop table Employee
Create table Employee
(
did int,
danme varchar(20)
constraint pk_emp primary key(did),
constraint fk_emp foreign key(did)references Dept(did)
)

--check with create command
drop table Bank
create table Bank
(
accno int,
name varchar(20) not null,
balance int,
branch varchar(20) default('kothrud'),
constraint pk_bank primary key(accno),
constraint chk_bal check(balance>0)
)

alter table employee add age int
alter table employee add constraint ch_age check(age>18)
alter table employee drop constraint ch_age
exec sp_help Employee

----using default constraint
--add branch

alter table Bank add branch varchar(20)
-- set default location of branch is kothrud

alter table Bank add constraint de_branch default 'Kothrud' for branch

--to remove constraint

alter table bank drop constraint de_branch

exec sp_help Bank

---create index constraint

----cluster index
create unique index in_emp on Employee(id)

----non cluster index

create index in_emp2 on Employee(name,email)

















