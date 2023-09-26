--Lab Assesment----
----Refer this for inner join 
-----Country State City-----
--create queries----
drop table Country
Create Table Country
(
Country_id int,
Country_name varchar(25),
Constraint pk_Country_id primary key(Country_id)
)

Create Table State1
(
State1_id int,
State1_name varchar(25),
Country_id int,
Constraint pk_State1_id primary key(State1_id),
Constraint fk_Country_id foreign key(Country_id) references Country(Country_id),
)

create Table City1
(
City1_id int,
City1_Name varchar(25),
State1_id int,
Constraint State1_id foreign key(State1_id) references State1(State1_id)
)

select*from Country
select*from State1
select*from City1

insert Country Values(1,'India')
insert Country Values(2,'United Kingdoms')
insert Country values(3,'Europe')

insert State1 values(101,'Maharashtra',3)
insert State1 values(102,'London',2)
insert State1 Values(103,'Austria',1)

insert City1 values(111,'Pune',103)
insert City1 values(222,'Merton',102)
insert City1 values(333,'Graz',101)

select*from Country
select*from State1
select*from City1
--Find country name whose state is Maharashtra--
select country_name from Country c join State1 s on c.Country_id=s.Country_id where State1_name='Maharashtra'

--Find country id country name state Maharashtra and city is Pune--

---Find the city name from the country India--
select City1_Name from City1 c 
inner join State1 s1 on s1.State1_id=c.State1_id
inner join Country c1 on c1.Country_id=s1.Country_id
where c1.Country_name='India'


---find state name whose sid=3
select State1_name from State1 where State1_id=103







