use emp;
#creating table doctor---1
create table doctor(
Dr_ID int primary key,
Dr_Name Varchar(50),
Dept Varchar(15));

#inserting records into table----2
insert into doctor(Dr_ID,Dr_Name,Dept)
values(1011,'Arjun A','Ortho'),
(1022,'Varun M','Paediatrics'),
(1033,'Manohar','ENT');

#changing of Dr id form 1033 to 1044---3
UPDATE doctor
SET Dr_ID = 1044
Where Dr_ID = 1033 AND Dr_Name = 'Manohar';
  
#deleting records related to Arjun A ----4
DELETE FROM doctor
Where Dr_Name = 'Arjun A' AND Dr_ID = 1011;

#adding column Salary-----5
alter table doctor
add column salary int;

#updating salary column with 50000----6
update doctor
SET salary = 50000 where Dr_id>=1000;