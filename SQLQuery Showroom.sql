create table Model
(
Model_id int primary key,
Model_name varchar(25),
cost decimal(10,2),
)
insert Model values(1,'Mountain Bike',500.00)
insert Model values(2,'Road bike',700.00)
insert Model values(3,'Hybrid bike',550.00)
insert Model values(4,'Cruiser Bike',450.00)
insert Model values(5,'Electric Bike',1000.00)

create table Customerr
(
cust_id int primary key,
first_name varchar(20),
last_name varchar(25),
mobile_no int,
gender varchar(15),
email varchar(20),
)
insert into Customerr values(1,'Riya','Malpani',7517379988,'Female','riya@gmail.com')
insert into Customerr values(2,'Aditya','Malpani',9421691896,'Male','aditya@gmail.com')
insert into Customerr values(3,'Yash','Shah',9881034356,'Male','yash@gmail.com')
insert into Customerr values(4,'Shravan','Laddha',9405563255,'Male','shravan@gmail.com')
insert into Customerr values(5,'Krishna','Mehta',7312556148,'Male','krishna@gmail.com')

create table Purchase
(
Purchase_id int,
cust_id int,
model_id int,
booking_amount int,
payment_id int,
purchase date ,
rating_id int,
constraint fk_cust_id foreign key(cust_id) references Customerr(cust_id),
constraint fk_model_id foreign key(model_id) references Model(Model_id)
)
insert into Purchase values(1,1,1,750,101,'2023/09/18',1)
insert into Purchase values(2,2,2,850,102,'2023/09/19',2)
insert into Purchase values(3,3,3,700,103,'2023/09/20',3)
insert into Purchase values(4,4,4,900,104,'2023/09/21',4)
insert into Purchase values(5,5,5,1000,105,'2023/09/22',5)


select*from Model
select*from Customerr
select*from Purchase




