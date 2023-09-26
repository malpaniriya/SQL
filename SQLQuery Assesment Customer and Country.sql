--1.	Write a statement that will select the City column from the Customers table
--2.	Select all the different values from the Country column in the Customers table.
--3.	Select all records where the City column has the value "London
--4.	Use the NOT keyword to select all records where City is NOT "Berlin".
--5.	Select all records where the CustomerID column has the value 23.
--6.	Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
--7.	Select all records where the City column has the value 'Berlin' or 'London'.
--8.	Select all records from the Customers table, sort the result alphabetically by the column City.
--11.	Select all records from the Customers where the PostalCode column is empty.
--12.	Select all records from the Customers where the PostalCode column is NOT empty.
--13.	Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
--14.	Delete all the records from the Customers table where the Country value is 'Norway'.
--15.	Use the MIN function to select the record with the smallest value of the Price column.
--16.	Use an SQL function to select the record with the highest value of the Price column.
--17.	Use the correct function to return the number of records that have the Price value set to 20
--18.	Use an SQL function to calculate the average price of all products.
--19.	Use an SQL function to calculate the sum of all the Price column values in the Products table
--20.	Select all records where the value of the City column starts with the letter "a".
--21.	Select all records where the value of the City column ends with the letter "a".
--22.	Select all records where the value of the City column contains the letter "a".
--23.	Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
--24.	Select all records where the value of the City column does NOT start with the letter "a".
--25.	Select all records where the second letter of the City is an "a".
--26.	Select all records where the first letter of the City is an "a" or a "c" or an "s".
--27.	Select all records where the first letter of the City starts with anything from an "a" to an "f".
--28.	Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
--29.	Use the IN operator to select all the records where the Country is either "Norway" or "France".
--30.	Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
--31.	Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
--32.	Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
--33.	Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
--34.	When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
--35.	When displaying the Customers table, refer to the table as Consumers instead of Customers.
--36.	List the number of customers in each country.
--37.	List the number of customers in each country, ordered by the country with the most customers first.
--38.	Write the correct SQL statement to create a new database called testDB.
--39.	Write the correct SQL statement to delete a database named testDB
--40.	Add a column of type DATE called Birthday in Persons table
--41.	Delete the column Birthday from the Persons table


drop table Customer
Create table Cust
(
Cust_Id int not null,
Country_name varchar (25),
City_name varchar (15),
PostalCode int,
constraint pk_Cust_Id primary key (Cust_Id)
)





select*from Cust
insert into Cust values('1','India','Pune',315004)
insert into Cust values('2','USA','Washington',215500)
insert into Cust values('3', 'Canada','Toronto',112004)
insert into Cust values('4','Europe', 'Switzerland',220330)
insert into Cust values('5', 'Spain','Madrid',112243)
insert into Cust values('6', 'Germany','Berlin',223344)
insert into Cust values('7','UK','London',115466)
insert into Cust values('8', 'Santorini','Greece',667788)

select*from Cust
-------------------------------------------------------------------------------------
---1)statement that will select the City column from the Customers table
select City_name from Cust
-------------------------------------------------------------------------------------

---2)Select all the different values from the Country column in the Customers table
select Distinct Country_name from Cust
select Country_name from Cust
---------------------------------------------------------------------------------------
---3)Select all records where the City column has the value "London
select*from Cust where City_name='London'
---------------------------------------------------------------------------------------
---4)Use the NOT keyword to select all records where City is NOT "Berlin".
select*from Cust where City_name<>'Berlin'

-----------------------------------------------------------------------------------------
---5)Select all records where the CustomerID column has the value 3.
select*from Cust where Cust_Id=3
-----------------------------------------------------------------------------------------
---6)Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 223344
select*from Cust where City_name ='Berlin' and PostalCode=223344 
-------------------------------------------------------------------------------------------
---7)Select all records where the City column has the value 'Berlin' or 'London'.
select*from Cust where City_name in ('Berlin','London')
---------------------------------------------------------------------------------------------
---8)Select all records from the Customers table, sort the result alphabetically by the column City.
select * from Cust order by
----------------------------------------------------------------------------------------------
---9)Select all records from the Customers table, sort the result reversed alphabetically by the column City.

--------------------------------------------------------------------------------------------------------
--10)Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City


---------------------------------------------------------------------------------------------------
--11.	Select all records from the Customers where the PostalCode column is empty.

---------------------------------------------------------------------------------------------------
--12.	Select all records from the Customers where the PostalCode column is NOT empty.

----------------------------------------------------------------------------------------------------
--13.	Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".




-----------------------------------------------------------------------------------------------------------------
--14.	Delete all the records from the Customers table where the Country value is 'Spain'.
delete from Cust where Country_name='Spain'
select*from Cust

----------------------------------------------------------------------------------------------------------
--15.	Use the MIN function to select the record with the smallest value of the Price column.


--16.	Use an SQL function to select the record with the highest value of the Price column.
--17.	Use the correct function to return the number of records that have the Price value set to 20
--18.	Use an SQL function to calculate the average price of all products.
--19.	Use an SQL function to calculate the sum of all the Price column values in the Products table

--20.	Select all records where the value of the City column starts with the letter "g".
select * from Cust where City_name like 'G%' 
--------------------------------------------------------------------------------------------------------
--21.Select all records where the value of the City column ends with the letter "o".
select *from Cust where City_name like '%o'
--------------------------------------------------------------------------------------------------------
--22.Select all records where the value of the City column contains the letter "a".

select * from Cust where City_name like '%a%'
------------------------------------------------------------------------------------------------------
--23.Select all records where the value of the City column starts with letter "w" and ends with the letter "n".

select * from Cust where City_name like 'w%%n'
-------------------------------------------------------------------------------------------------------
--24.	Select all records where the value of the City column does NOT start with the letter "a".
select* from Cust where City_name not like 'a'
-------------------------------------------------------------------------------------------------------
--25. Select all records where the second letter of the City is an "e".
select*from Cust where City_name like '_e%'
--------------------------------------------------------------------------------------------
--26.Select all records where the first letter of the City is an "a" or a "c" or an "s".



--27.	Select all records where the first letter of the City starts with anything from an "a" to an "f".


--28.	Select all records where the first letter of the City is NOT an "a" or a "c" or an "f"


























