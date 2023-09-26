Create table book
(
id int,
price decimal,
name varchar(10),
chapters numeric(10,6)
)
alter table book  alter column name varchar(20)
alter table book add author name(15)
alter table book drop column author
exec sp_rename 'book.name','bookname'




