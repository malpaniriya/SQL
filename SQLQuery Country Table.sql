------Practice tables

create Table Country
(
Country_id int,
Country_Name varchar(20),
Constraint pk_Country_id primary key(Country_id)
)

create Table StateName
(
StateName_id int,
StateName_Name varchar(25),
Country_id int,
Constraint pk_StateName_id primary key(StateName_id),
Constraint fk_Country_id foreign key(Country_id) references Country(Country_id)
)

create Table City
(
City_id int,
City_Name varchar(25),
StateName_id int,
Constraint StateName_id foreign key(StateName_id) references StateName(StateName_id)
)