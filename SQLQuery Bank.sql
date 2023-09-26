create table Bank
(
Bank_id int primary key,
Bank_name varchar(20),
Bank_Address varchar(30),
City varchar (20),
Statee varchar(25),
)

Create table Customerrr
(
cust_id int primary key,
bank_id int,
constraint fk_bank_id foreign key(bank_id) references Bank(Bank_id)
)

create table Account
(
A_no int,
cust_id int,
A_type_id int,
Balance int,
constraint fk_cust_id foreign key(cust_id) references Customerrr(cust_id)
)
drop table AccountType
create table AccountType
(
Acc_id int primary key,
Acc_type varchar(25),
)

create table CustomerMaster
(
Cust_id int,
Cust_name varchar(25),
Contact int,
age int,
pan_no int,
)
select*from Bank
select*from Customerrr
select*from Account
select*from AccountType
select*from CustomerMaster

------------------------------------PROBLEM STATEMENTS-------------------------
--1.	Find the no of accounts in saving account

--2.	Display all bank name, cname , city from all  bank in ascending order of bankname  and desceding order of city name
--3.	Find the customer who has perform maximum number of transaction
--4.	find the customers whose  balance is greater than avg balance of saving accounts.
--5.	find the amount , name of customer whose acc_no is 12345 


