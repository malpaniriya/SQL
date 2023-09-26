---------------------------IDENTITY IN SQL SERVER--------------------------------------------

create table Product
(
id int primary key identity(101,5),
name varchar(25),
price int
)

insert into Product values('pen',10)
insert into Product values('pencil',20)
insert into Product values('eraser',05)
insert into Product values ('sharpner',04)
insert into Product values ('scale',15)

select*from Product

-----------------------------------------USING SCALAR FUNCTION------------------------------
--create a function to accept the product price
--and give 10% discount and returns the discounted price
select*from Product

Create function GetDiscount(@price int)
returns decimal
as begin
declare @disprice decimal
set @disprice=@price-(@price*0.10)
return @disprice
end

select price ,dbo.GetDiscount(price) as 'discount price' from product


select*from Product
select Product_name,Product_Price,
case
when Product_Price <500 then 'Not expensive'
when Product_Price>500 then 'Expensive'
else 'Affordable'
end as 'Remark'
from Product







