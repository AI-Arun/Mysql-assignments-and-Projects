#creating database emp---1
create database emp;
use emp;

#Creating table employee---2
create table employee(
Emp_id int,
Name char(50),
Depart Varchar(50),
Contact Int(10));

#changing name of the table---3
alter table employee 
rename as empinfo;

#table structure---4
desc empinfo;












