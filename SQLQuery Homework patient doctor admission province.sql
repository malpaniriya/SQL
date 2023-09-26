create table Patients
(
patient_id int,
first_name varchar(30),
last_name varchar(30),
Gender char(1),
Birthdate date,
city varchar(30),
province_id char(2),
allergies varchar(80),
height decimal(3,0),
pweight decimal(4,0),
constraint fk_province_id foreign key(province_id) references province(province_id)
)

create table Doctor
(
Doctor_id int primary key,
Dr_first_name varchar(30),
Dr_last_name varchar(30),
specialty varchar(25),
)

create table Admissions
(
patient_id int,
doctor_id int,
admission_date date,
discharge_date date,
diagnosis varchar(50),
attending_doctor_id int,
constraint fk_patient_id foreign key (patient_id)references Patients(Patient_id),
constraint fk_doforeign foreign key (doctor_id)references Doctor(doctor_id)

)
drop table province
create table province
(
province_id int primary key,
province_name varchar(30)
)



------------------------------------------PROBLEM STATEMENTS---------------------------------------------------------
--1.	Show the first name, last name and gender of patients who’s gender is ‘M’
--2.	Show the first name & last name of patients who does not have any allergies
--3.	Show the patients details that start with letter ‘C’
--4.	Show the patients details that height range 100 to 200
--5.	Update the patient table for the allergies column. Replace ‘NKA’ where allergies is null
--6.	Show how many patients have birth year is 2020
--7.	Show the patients details who have greatest height
--8.	Show the total amount of male patients and the total amount of female patients in the patients table.

--9.	Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 'Morphine'. Show results ordered ascending by allergies then by first_name then by last_name.
--10.	Show first_name, last_name, and the total number of admissions attended for each doctor.

--Every admission has been attended by a doctor.





