-------TRIGGERS-------------------------------------------------------------------
create table EMPTrack
(
id int primary key identity (1,1),
description varchar (200)
)
select*from EMPTrack
select*from EMP_1

create trigger tr_EMP_1
on EMP_1 after insert 
as begin 
declare @id int
declare @name varchar(30)
declare @email varchar(30)
select @id=id,@name=name,@email=email from inserted
insert into EMPTrack values('new record with details'+CAST(@id as varchar)
+'name'+@name+'email'+@email+'Date'+CAST(GETDATE()as varchar(30))+'Added')
end

insert into EMP_1 (id,name,email,age,salary,city,did,managerid)values 
(150,'Sachin ','sachin@gmail.com',25,250000,'Pune',101,5)

select*from EMP_1
select*from EMPTrack

create trigger tr_EMP_1_delete
on EMP_1 after insert 
as begin 
declare @id int
declare @name varchar(30)
declare @email varchar(30)
select @id=id,@name=name,@email=email from deleted
insert into EMPTrack values('new record with details'+CAST(@id as varchar)
+'name'+@name+'email'+@email+'Date'+CAST(GETDATE()as varchar(30))+'Removed')
end