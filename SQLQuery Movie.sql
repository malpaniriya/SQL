--2)Movies- Movie id , movie name , release year , box office collection
--Roles- roll id , roll name ( e.g. 1 producer , 2 director, 3 hero ,4 heroine, 5 villain etc)
--Celebrity -celebrity id , celebrity name , birthdate , ph no , email
--BollywoodData -Bollywood Data id , celebrity id , movie id , roll id

Create Table Movie
(
Movie_id int,
Movie_name varchar(20),
Release_yr int,
Box_office_Collections int,
constraint pk_Movie_id primary key (Movie_id)
)

Create Table Celebrity
(
Celebrity_id int,
Celebrity_Name varchar(20),
Bithdate int,
ph_no int,
email varchar(25),
constraint pk_Celebrity_id primary key(Celebrity_id)
)

Create Table Rolle
(
rolle_id int,
rolle_name varchar(20),
constraint pk_rolle_id primary key(rolle_id)
)

Create Table BollyData
(
Data_id int,
Celebrity_id int,
Movie_id int,
Rolle_id int,
constraint pk_Data_id primary key(Data_id),
constraint fk_CelebId foreign key(Celebrity_id) references Celebrity(Celebrity_id),
constraint fk_MovieId foreign key(Movie_id) references Movie(Movie_id),
constraint fk_RolleeId foreign key(Rolle_id) references Rolle(Rolle_id)

)



