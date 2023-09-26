--using constraint
drop table employee
create table employee
(
name varchar(20)not null,
email varchar(30)unique
)

--using primary key

create table employee1
(
id int primary key,
name varchar (20) not null
)

--OR
create table employee2
(
id int,
name varchar(20)not null,
constraint pk_emp primary key(id)                 
)

--using alter command

alter table employee2 alter column id int  not null
alter table employee2 add constraint pk_emp primary key(id) 











