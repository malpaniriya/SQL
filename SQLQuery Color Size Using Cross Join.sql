-------------Using Cross Joins---------------
create table color
(
id int,
cname varchar(20),
)

select*from color

create table size
(
id int,
sname varchar(20)
)

select*from size

insert into color values(1,'Black')
insert into color values(2,'White')
insert into color values(3,'Red')
insert into color values(4,'Grey')
insert into color values(5,'Blue')


insert into size values(1,'XS')
insert into size values(2,'S')
insert into size values(3,'M')
insert into size values(4,'L')
insert into size values(5,'XL')

select*from color cross join size
