Create Table Employe
(
id int,
name varchar(20),
salary numeric(6,2),
city varchar(10),
dob date
)
alter table employe alter column name varchar(25)
alter table employe add country  varchar(20)
alter table employe drop column country
exec sp_rename 'Employe.name' ,'employename'
