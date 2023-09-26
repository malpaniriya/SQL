drop table Bank
Create table Bank
(
Bank_id int primary key,
Bank_name varchar(30),
Bank_Address varchar(30),
Bank_city varchar(20),
Bank_state varchar(25),
)
INSERT INTO Bank (Bank_id, Bank_name, Bank_Address, Bank_city, Bank_state)
VALUES
    (1, 'Bank of America', '123 Main Street', 'New York', 'NY'),
    (2, 'Wells Fargo', '456 Elm Street', 'Los Angeles', 'CA'),
    (3, 'Chase Bank', '789 Oak Street', 'Chicago', 'IL'),
    (4, 'Citibank', '101 Pine Street', 'San Francisco', 'CA'),
    (5, 'US Bank', '555 Maple Street', 'Minneapolis', 'MN');
drop table Custo
create table Custo
(
Cust_id int,
Bank_id int,
constraint fk_bank_id foreign key(Bank_id) references Bank(Bank_id),
constraint fk_cust_id foreign key(Cust_id) references CustomerMaster (Cust_id),
)
INSERT INTO Custo (Cust_id, Bank_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 1),
    (4, 3),
    (5, 2);
drop table Accountt
create table Accountt
(
Account_no int primary key,
Cust_id int,
AccountType_id int,
Balance numeric,
constraint fk_accounttype_id foreign key(AccountType_id) references AccounType(AccountType_id),
constraint fk_cust_id foreign key(Cust_id) references Custo(Cust_id)
)
INSERT INTO Accountt (Account_no, Cust_id, AccountType_id, Balance)
VALUES
    (1001, 1, 1, 5000.00),
    (1002, 2, 2, 7500.50),
    (1003, 3, 1, 3000.25),
    (1004, 4, 3, 10000.75),
    (1005, 5, 2, 6000.00)


drop table AccounType
Create table AccounType
(
AccountType_id int primary key,
AccountType varchar(25),
)
INSERT INTO AccounType (AccountType_id, AccountType)
VALUES
    (1, 'Savings'),
    (2, 'Checking'),
    (3, 'Fixed Deposit'),
    (4, 'Credit Card'),
    (5, 'Loan');
drop table Transactions
Create table Transactions
(
Trans_id int primary key,
Account_no int,
Amount numeric,
Trans_type varchar(25),
Datee Date,
constraint fk_account_no foreign key(Account_no) references Accountt(Account_no)

)
select * from Transactions
INSERT INTO Transactions (Trans_id, Account_no, Amount, Trans_type, Datee)
VALUES
    (1, 1001, 1000.00, 'Deposit', '2023/09/20'),
    (2, 1002, 500.50, 'Withdrawal', '2023/09/20'),
    (3, 1003, 250.25, 'Deposit', '2023/9/21'),
    (4, 1004, 1000.75, 'Withdrawal', '2023/09/21'),
    (5, 1005, 300.00, 'Deposit', '2023/09/22');
drop table CustomerMaster
create table CustomerMaster
(
cust_id int primary key,
cust_name varchar(25),
contact numeric,
Age int,
pan_no int,

)
INSERT INTO CustomerMaster (cust_id, cust_name, contact, Age, pan_no)
VALUES
    (1, 'John Doe', 1234567890, 35, 12345),
    (2, 'Jane Smith', 9876543210, 28, 67890),
    (3, 'Alice Johnson', 5555555555, 45, 54321),
    (4, 'Bob Brown', 6666666666, 40, 98765),
    (5, 'Eva Davis', 9999999999, 32, 45678);
select*from Bank
select*from Custo
select*from Accountt
select*from AccounType
select*from CustomerMaster
select*from Transactions

--1.	Find the no of accounts in saving account
select count(*)from AccounType where AccountType='Savings'

--2.	Display all bank name, cname , city from all  bank in ascending order of bankname  and desceding order of city name
select b.Bank_name, b.Bank_city from Bank b
inner join Custo c on b.Bank_id=c.Bank_id 
inner join CustomerMaster cm on cm.cust_id=c.Cust_id
order by Bank_city desc

--3.	Find the customer who has perform maximum number of transaction




      
       
       



--4.	find the customers whose  balance is greater than avg balance of saving accounts.


--5.	find the amount , name of customer whose acc_no is 501 
select cm.cust_name,cm.cust_id from CustomerMaster cm
inner join Custo c on cm.cust_id=c.Cust_id
inner join Accountt a on a.Account_no=


--6 display the customer name ,contact of customers whose account type is
--‘saving’ order by descending order of cname .
select cm.cust_name from CustomerMaster cm




--7.	display bank name , total balance of all customers in that bank of all banks in
--descending order of balance.











