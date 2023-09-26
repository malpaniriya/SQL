-------INNER JOIN--------------------------

create table Usr
(
usrid int primary key,
uname varchar(20),
uemail varchar(30),
)

create table Prdt
(
pid int primary key,
pname varchar(20),
pprice int,
)

create table ordr
(
oid int primary key,
pid int,
usrid int,
qty int,
constraint fk_pid foreign key(pid)references Prdt(pid),
constraint fk_usrid foreign key(usrid)references Usr(usrid)
)






select*from usr
select*from Prdt
select*from ordr

insert into values(