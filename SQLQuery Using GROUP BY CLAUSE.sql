----------------USING GROUP BY CLAUSE-------------------------

Create table Product1
(
Product_Id int,
Product_Name varchar(20),
Product_Price int,
Product_Company varchar(25)
)

select*from Product1
Insert into Product1 values(1,'AirFrier',5000,'Lg')
Insert into Product1 values(2,'Hair Dryer',3000,'Dyson')
Insert into Product1 values(3,'Microwave',25000,'Samsung')
Insert into Product1 values(4,'Headphones',1000,'hp')
Insert into Product1 values(5,'Watch',5000,'Samsung')
Insert into Product1 values(6,'Pendrive',1100,'Sandisk')
Insert into Product1 values(7,'Iron',3000,'Lg')
Insert into Product1 values(8,'Grinder',3500,'hp')
Insert into Product1 values(9,'Refrigerator',30000,'Lg')
Insert into Product1 values(10,'Laptop',53000,'hp')

create table Ordrr
(
oid int,


---Display the count of each product----
select Product_id,count(Product_id) from Product1 group by product_id

---display number of order placed by each customer----
select user_id,count(oid)from ordr group by userid

--find total m,arks of each student---
select sid,sum(marks)from exam group by sid

--Display the count of student in each course
select sid,count(student) from student group by cname



--find total m,arks of each student---
select sid,sum(marks)from exam group by sid



--Display the count of student in each course
select cname,count(sid)from student group by cname

--Display count of student for C# course
select cname,count (sid) from student where cname='C#' grop by cname 

--display course and count of student>10
select cname,count(sid) from student 
group by cname
having count(sid)>10

--display sum of fees for each course
select cname,sum(fees) from student group by cname 

--display count of student in each course student count less than 15 and display in descending order
select canme,count(sid) from student 
group by cname
having count (sid)<15
order by count(sid) desc

