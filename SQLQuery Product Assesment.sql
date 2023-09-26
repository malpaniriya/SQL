----Assessment------
--Create table product
--Id
--Name
--Price
--Company

--Insert 10 records
--Write below select quries
--Display all records
--Display products whose price is < 2000
--Display products whose company name is LG
--Display products whose price is between 2000 to 5000
--Display unique company name 
--Display products whose company is dell & hp

Create table Product
(
Product_Id int,
Product_Name varchar(20),
Product_Price int,
Product_Company varchar(25)
)

select*from Product
Insert into Product values(1,'AirFrier',5000,'Lg')
Insert into Product values(2,'Hair Dryer',3000,'Dyson')
Insert into Product values(3,'Microwave',25000,'Samsung')
Insert into Product values(4,'Headphones',1000,'hp')
Insert into Product values(5,'Watch',5000,'Samsung')
Insert into Product values(6,'Pendrive',1100,'Sandisk')
Insert into Product values(7,'Iron',3000,'Lg')
Insert into Product values(8,'Grinder',3500,'hp')
Insert into Product values(9,'Refrigerator',30000,'Lg')
Insert into Product values(10,'Laptop',53000,'hp')

----Display products whose price is <2000-------
select* from Product where Product_Price>2000

-----Display products whose company name is LG------
select * from Product where Product_Company='Lg'

------Display products whose price is between 2000 to 5000---------
select*from Product where Product_Price between 2000 and 5000

------Display unique company name -------------
select distinct Product_Company from Product

--------Display products whose company is lg & hp------
select *from Product where Product_Company in('lg','hp')









