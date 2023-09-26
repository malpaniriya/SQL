--------------------------------------------HOMEWORK----------------------------------------------------------
CREATE TABLE Worker 
(
	WORKER_ID INT NOT NULL PRIMARY KEY,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT,
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);
INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '2020-02-14 09:00:00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '2011-06-14 09:00:00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '2020-02-14 09:00:00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '2020-02-14 09:00:00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '2011-06-14 09:00:00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '2011-06-14 09:00:00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '2020-01-14 09:00:00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '2011-04-14 09:00:00', 'Admin');

CREATE TABLE Bonus 
(
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT,
	BONUS_DATE DATETIME,
	constraint fk_Worker_ref_id foreign key (Worker_ref_id) references Worker(WORKER_ID)
	
);
INSERT INTO Bonus (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
    (1, 5000, '2020-02-16'),
    (2, 3000, '2011-06-16'),
    (3, 4000, '2020-02-16'),
    (1, 4500, '2020-02-16'),
    (2, 3500, '2011-06-16');

CREATE TABLE Title 
(
    WORKER_REF_ID INT,
    WORKER_TITLE CHAR(25),
    AFFECTED_FROM DATETIME,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE
);

INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
    (1, 'Manager', '2016-02-20 00:00:00'),
    (2, 'Executive', '2016-06-11 00:00:00'),
    (8, 'Executive', '2016-06-11 00:00:00'),
    (5, 'Manager', '2016-06-11 00:00:00'),
    (4, 'Asst. Manager', '2016-06-11 00:00:00'),
    (7, 'Executive', '2016-06-11 00:00:00'),
    (6, 'Lead', '2016-06-11 00:00:00'),
    (3, 'Lead', '2016-06-11 00:00:00');

select *from Worker
select*from Bonus
select*from Title
--------------------------------------------------PROBLEM STATEMENTS------------------------------------------------------
--Q-1. Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.
select first_name as worker_name from Worker
------------------------------------------------------------------------------------------------------------------------
--Q-2. Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper case.
select UPPER(first_name)from Worker
------------------------------------------------------------------------------------------------------------------------
--Q-3. Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.
select distinct department from Worker
------------------------------------------------------------------------------------------------------------------------
--Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from the Worker table.
select SUBSTRING (first_name, 1,3) as 'sustring'from Worker
------------------------------------------------------------------------------------------------------------------------
--Q-5.Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.
-------------------------------------------------------------------------------------------------------------------------
--Q.6.Write an SQL query to print the FIRST_NAME from the Worker table after removing white spaces from the right side.
select RTRIM(first_name) from Worker
---------------------------------------------------------------------------------------------------------------------------
--Q-7. Write an SQL query to print the DEPARTMENT from the Worker table after removing white spaces from the left side.
select LTRIM(department) from Worker
-------------------------------------------------------------------------------------------------------------------------
--Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length.
Select distinct length (department) from Worker;------ERROR
------------------------------------------------------------------------------------------------------------------------
--Q-9. Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’.
------------------------------------------------------------------------------------------------------------------------
--Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from the Worker table into a single column COMPLETE_NAME. A space char should separate them.
select concat(first_name,' ',last_name)as Complete_name from Worker
-----------------------------------------------------------------------------------------------------------------------------
--Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select*from Worker order by first_name
-------------------------------------------------------------------------------------------------------------------------------
--Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
select*from Worker 
order by first_name,
department desc
-------------------------------------------------------------------------------------------------------------------------------
--Q-13. Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
select *from Worker where first_name in('Vipul','Satish')
------------------------------------------------------------------------------------------------------------------------------
--Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from the Worker table.
------------------------------------------------------------------------------------------------------------------------------
--Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
select*from Worker where Department='Admin'
---------------------------------------------------------------------------------------------------------------------------
--Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
select *from Worker where first_name like' %a%'
----------------------------------------------------------------------------------------------------------------------------
--Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
select*from Worker where first_name like '%a'
---------------------------------------------------------------------------------------------------------------------------
--Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select*from Worker where first_name like '_____h' 
---------------------------------------------------------------------------------------------------------------------------
--Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select*from Worker where salary between 100000 and 500000
-------------------------------------------------------------------------------------------------------------------------
--Q-20. Write an SQL query to print details of the Workers who joined in Feb’2014.
---------------------------------------------------------------------------------------------------------------------------
--Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
select count(*) as Employee_Count from Worker where department='Admin'
----------------------------------------------------------------------------------------------------------------------------
--Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.
----------------------------------------------------------------------------------------------------------------------------
--Q-23. Write an SQL query to fetch the no. of workers for each department in descending order.
select department ,count (Worker_id) no_of_worker from Worker
group by department
order by no_of_worker Desc
-----------------------------------------------------------------------------------------------------------------------------
--Q-24. Write an SQL query to print details of the Workers who are also Managers.
-----------------------------------------------------------------------------------------------------------------------------
--Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
-------------------------------------------------------------------------------------------------------------------------------
--Q-26. Write an SQL query to show only odd rows from a table.
------------------------------------------------------------------------------------------------------------------------------
--Q-27. Write an SQL query to show only even rows from a table.
-----------------------------------------------------------------------------------------------------------------------------
--Q-28. Write an SQL query to clone a new table from another table.
-------------------------------------------------------------------------------------------------------------------------------
--Q-29. Write an SQL query to fetch intersecting records of two tables.
select *from Worker inner join Bonus on Worker.WORKER_ID=Bonus.WORKER_REF_ID
---------------------------------------------------------------------------------------------------------------------------------
--Q-30. Write an SQL query to show records from one table that another table does not have.
select*from Worker minus Select*from Title
-------------------------------------------------------------------------------------------------------------------------------
--Q-31. Write an SQL query to show the current date and time.
select GETDATE()
------------------------------------------------------------------------------------------------------------------------------
--Q-32. Write an SQL query to show the top n (say 10) records of a table.
select Top 10 *from Worker 
-----------------------------------------------------------------------------------------------------------------------------
--Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
-----------------------------------------------------------------------------------------------------------------------------
--Q-34. Write an SQL query to determine the 5th highest salary without using the TOP or limit method.
-----------------------------------------------------------------------------------------------------------------------------
--Q-35. Write an SQL query to fetch the list of employees with the same salary.
---------------------------------------------------------------------------------------------------------------
--Q-36. Write an SQL query to show the second-highest salary from a table.
----------------------------------------------------------------------------------------------------------------------------
--Q-37. Write an SQL query to show one row twice in the results from a table.
-----------------------------------------------------------------------------------------------------------------------------
--Q-38. Write an SQL query to fetch intersecting records of two tables.
select *from Worker inner join Title on Worker.WORKER_ID=Title.WORKER_REF_ID
--------------------------------------------------------------------------------------------------------------------------------
--Q-39. Write an SQL query to fetch the first 50% of records from a table.
-----------------------------------------------------------------------------------------------------------------------------------
--Q-40. Write an SQL query to fetch the departments that have less than five people in them.
select department ,count(*)as WorkerCount from Worker 
group by DEPARTMENT
having count(*)<5
select *from Worker
-------------------------------------------------------------------------------------------------------------------------------
--Q-41. Write an SQL query to show all departments along with the number of people in there.
------------------------------------------------------------------------------------------------------------------------------------
--Q-42. Write an SQL query to show the last record from a table.
select top 1*from Worker order by WORKER_ID 
---------------------------------------------------------------------------------------------------------------------------------
--Q-43. Write an SQL query to fetch the first row of a table.
select *from Worker where WORKER_ID=1
-------------------------------------------------------------------------------------------------------------------------------------
--Q-44. Write an SQL query to fetch the last five records from a table.

---------------------------------------------------------------------------------------------------------------------------------------
--Q-45. Write an SQL query to print the name of employees having the highest salary in each department.
-------------------------------------------------------------------------------------------------------------------------------------
--Q-46. Write an SQL query to fetch three max salaries from a table.
select distinct salary from Worker  w where 3>=(select count (distinct salary)from Worker  w1
where w.Salary>=w1.SALARY)
-------------------------------------------------------------------------------------------------------------------------------------
--Q-47. Write an SQL query to fetch three min salaries from a table.
select distinct salary from Worker w1 where 3<=(select count(distinct salary) from Worker w2
where w1.SALARY<=w2.SALARY)
-------------------------------------------------------------------------------------------------------------------------------------
--Q-48. Write an SQL query to fetch nth max salaries from a table.
-
----------------------------------------------------------------------------------------------------------------------------------------
--Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.
select department ,sum(salary) from Worker group by department
 
--------------------------------------------------------------------------------------------------------------------------------------
--Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.
select first_name,last_name from Worker
where SALARY=(select MAX(salary) from Worker)




---pending->5,9,14,20,22,24,25,26,27,28,33,34,35,36,37,39,41,44,45,48


