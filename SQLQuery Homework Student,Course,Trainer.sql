--HOMEWORK---
Create table Stud
(
Stud_rollno int primary key,
Stud_name varchar(20),
Stud_degree varchar(25),
Stud_DOB date,
Stud_Course_id int ,         
fees int,
Remark varchar(25),
Placed varchar(20),
constraint fk_stud_course_id foreign key(Stud_Course_id) references Coursee(C_id)
)
insert into Stud values(1,'Riya','MBA','2023/07/22',101,2500000,'Eligible','Placed')
insert into Stud values(2,'Shruti','LLB','2017/07/20',102,300000,'Not Eligible',' Not Placed')
insert into Stud values(3,'Aditya','BBA','2022/05/19',103,2100000,'Pass','Placed')
insert into Stud values(4,'Amit','MCA','2019/06/15',104,1500000,'Not eligible',' Not Placed')
insert into Stud values(5,'Sumit','MBA','2023/06/15',105,2000000,'Pass','Placed')

drop table Coursee
Create Table Coursee
(
C_id int primary key,
C_name varchar(25),
C_duration int,
T_id int ,
Total_Fees int,
constraint fk_Tid foreign key(T_id) references Trainer(T_id)
)
insert into Coursee values(101,'Software Developer',6,10,200000)
insert into Coursee values(102,'Data Science',12,11,250000)
insert into Coursee values(103,'Tester',5,12,20000)
insert into Coursee values(104,'CDAC',12,13,310000)
insert into Coursee values(105,'SalesForce',5,14,22000)

create Table Trainer
(
T_id int primary key,
T_name varchar(20),
Joining_date date,
T_email varchar(25),
T_experience int
)

insert into Trainer values(10,'Rahul','2023/02/15','rahul@gmail.com',25)
insert into Trainer values(11,'Bharat','2019/01/11','bharat@gmail.com',20)
insert into Trainer values(12,'Nimish','2020/04/25','nimish@gmail.com',18)
insert into Trainer values(13,'Mohit','2023/04/22','rahul@gmail.com',20)
insert into Trainer values(14,'Atharva','2022/05/23','atharva@gmail.com',16)

select*from Stud
select*from Coursee
select*from Trainer

--1)Show list of students.List contains roll no ,student name ,course name ,trainer name in order of course name and student name.)---)1
select*from Stud
select s.Stud_rollno,s.Stud_name ,c.C_name,t.T_name
from stud as s 
Join coursee as c on s.Stud_Course_id=c.C_id
join trainer as t on c.t_id=t.T_id
order by c.C_name,s.Stud_name

--2)show list of students who have pending fees more than 1000rs. List should have student name,course name, balance fees.
--show this list in descending order of balance fees
select s1.Stud_name,s2.C_name,(s2.Total_fees-s1.fees) as balance from stud s1
join coursee s2 on s2.C_id=s1.Stud_Course_id
order by balance desc


--3)3. Append letter ‘_spl’ to all batch ids of trainer ‘Nimish’.
update Trainer
set T_id=CONCAT(T_id,'_spl') 
where T_name='Nimish'

--4. Update table student. Update ‘remark’ field. Remark should be ‘Eligible for exam’ if fees paid 
--by student is more than 60%.
update Stud 
set Remark='eligible for exam'
where fees>any (select Total_fees-0.6 from Coursee)
--5. Create a index to make retrieval faster based on course name.
--6. List name of course for which more than 20 students are enrolled.
--7. List name of course for which maximum revenue was generated. ( max fee collection)

--8. Select name of student who are in same batch as ‘Atul’.
--9. Delete all students who are in course which is less than 2 months duration.
--10. Delete all students for whom is placed is ‘yes’ and who have paid all the fees of their course








