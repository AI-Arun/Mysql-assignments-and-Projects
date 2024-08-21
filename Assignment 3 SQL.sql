use emp;
#creating table emp---1
Create table emp(
eid int primary key,
ename varchar (20),
esalary float,
email varchar (50),
dob Date );

#inserting records into table emp---2
insert into emp
Values
      (1,'XYZ',3000.89,'xyz@gmail.com','1990-08-30'),
      (2,'ABC',2300.90,'abc@gmail.com','1980-03-21');
      
#update salary of eid =1---3
update emp
 SET esalary = 4000.68, dob = '1993-08-30' where eid=1;
 
#deleting all the records of emp---4
 truncate emp;

