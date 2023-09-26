--LAB ASSIGNMENTS
--1)
--Book table Book id , book name , author id , price
--Author table author id ,author name , ph no , email , address, city
--Award table award id , award type id, author id , book id , year
--master tableAwards award type id , award name , award price
--Constraint fk_Country_id foreign key(Country_id) references Country(Country_id)
drop table Book
Create Table Book
(
Book_id int,
Book_Name varchar(20) not null,
Author_id int,
Price int,
Constraint pk_Bid primary key (Book_id),
Constraint fk_Aid foreign key(Author_id) references Author(Author_id)
)

insert into Book (Book_id, Book_Name, Author_id, Price)values (1, 'The Great Gatsby', 1, 200)
insert into Book (Book_id, Book_Name, Author_id, Price)values (2, 'The Alchemist', 2, 18)
insert into Book (Book_id, Book_Name, Author_id, Price)values(3, 'Rohnda Byrne', 3, 150)
insert into Book (Book_id, Book_Name, Author_id, Price)values(4, 'Pride and Prejudice', 4, 220)
insert into Book (Book_id, Book_Name, Author_id, Price)values (5, 'Rich Dad Poor Dad', 5, 165)

select*from Book



Create Table Author
(
Author_id int,
Author_Name varchar(25) not null,
Ph_no int,
Email varchar(30),
A_address varchar(20),
City varchar(15),
Constraint pk_Author_id primary key(Author_id)
)

insert into author (Author_id, Author_name, City) values (1, 'John Doe', 'New York')
insert into author (Author_id, Author_name, City) values(2, 'Jane Smith', 'Los Angeles')
insert into author (Author_id, Author_name, City)values (3, 'Michael Johnson', 'Chicago')
insert into author (Author_id, Author_name, City)values (4, 'Emily Brown', 'Houston')
insert into author (Author_id, Author_name, City)values (5, 'David Wilson', 'San Francisco')

select*from Author

Create Table Award
(
Award_id int,
AwardType_id int ,
Author_id int,
Book_id int,
yr int,
constraint pk_Award_id primary key(Award_id),
constraint fk_AwardTpye_id foreign key(AwardType_id) references MasterTable(AwardType_id),
constraint fk_Bookid foreign key(Book_id) references Book(Book_id),
constraint fk_A_id foreign key(Author_id) references Author(Author_id)
)
insert into Award(Award_id, AwardType_id, Author_id, Book_id, yr)values (1, 1, 1, 1, 2022)
insert into Award (Award_id, AwardType_id, Author_id, Book_id, yr)values (2, 2, 2, 2, 2023)
insert into Award (Award_id, AwardType_id, Author_id, Book_id, yr)values (3, 3, 3, 3, 2021)
insert into Award (Award_id, AwardType_id, Author_id, Book_id, yr)values (4, 4, 4, 4, 2020)
insert into Award (Award_id, AwardType_id, Author_id, Book_id, yr)values (5, 5, 5, 5, 2022)
select*from Award

Create Table MasterTable
(
AwardType_id int,
Award_Name varchar(25),
Award_Price int,
Constraint pk_AwardType_id primary key (AwardType_id)
)
insert into MasterTable (AwardType_id, Award_Name, Award_Price)values (1, 'Gold Medal', 1000)
insert into MasterTable (AwardType_id, Award_Name, Award_Price)values (2, 'Silver Medal', 500)
insert into MasterTable (AwardType_id, Award_Name, Award_Price)values (3, 'Bronze Medal', 250)
insert into MasterTable (AwardType_id, Award_Name, Award_Price)values(4, 'Honorable Mention', 100)
insert into MasterTable (AwardType_id, Award_Name, Award_Price)values (5, 'Special Achievement Award', 1000)
select*from MasterTable

select*from Author
select*from Book
select*from MasterTable
select*from Award

--find the book which is written by John Doe--
select book_name from book b
join author a on a.Author_id=b.Author_id
where Author_Name='John Doe'

--finf the author name from book 'The Alchemist'
select Author_name from Author a
join Book b on a.Author_id=b.Author_id 
where Book_Name='Rich Dad Poor Dad'

--find author name who got award in 2021
select Author_name from Author a
join Award a1 on a.Author_id=a1.Author_id
where a1.yr=2021

--find books got an awards
select book_name from book b
join Award a on a.Book_id=b.Book_id

--5)find out the athor wise bookcount
select Author_Name ,count(Book_id) from Author a
inner join Book b on b.Author_id=a.Author_id
group by Author_Name

--6)find the author name who got only one award
select Author_Name, count(d.AwardType_id) as cnt
from Author a join Award d
on a.Author_id=d.Author_id
group by a.Author_Name
having count (a.Author_name)=1

--7)find the author name who got silver medal
select Author_name from Author a
join Award d on a.Author_id=d.Author_id 
inner join MasterTable m on m.AwardType_id=d.AwardType_id
where m.Award_Name='Silver Medal'

--8)find the author who got awrd price more than 15
select Author_name from Author a
inner join Award a1 on a1.Author_id=

--9)find author who got maximum awards
select Author_Name from Author a
inner join Award d on a.Author_id=d.Award_id
inner join 






























