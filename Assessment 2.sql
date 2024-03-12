create database school;
use school;

create table students (
st_id int primary key,
St_name varchar(50) not null,
sex varchar(5)not null,
percentage decimal (5,2),
class varchar(20) not null,
section varchar(10) not null,
streams varchar(25) not null,
DOB date);

insert into students (st_id,St_name,sex,percentage,class,section,streams,DOB) values
(1001,'surekha johi','F',82,'12','A','science','1988-03-08'),
(1002,'mahhi agrawal','F',56,'11','C','commerce','2008-11-23'),
(1003,'sanam verma','M',59,'11','C','commerce','2006-06-29'),
(1004,'Ronit kumar','M',63,'11','C','commerce','1997-05-11'),
(1005,'Dipesh pulkit','M',78,'11','B','science','2003-09-14'),
(1006,'jahanvi puri','F',60,'11','B','commerce','2008-07-11'),
(1007,'Sanam Kumar','M',23,'12','F','commerce','1998-03-08'),
(1008,'Sahil Sarash','M',56,'11','C','commerce','2008-07-11'),
(1009,'Akshra agrwal','F',72,'12','B','commerce','1996-01-10'),
(1010,'Stuti mishra','F',39,'11','F','science','2008-11-23'),
(1011,'Harsh agrawal','M',42,'11','C','science','1998-08-03'),
(1012,'Nikuj agrwal','M',49,'12','C','commerce','1998-06-28'),
(1013,'Akriti saxsena','F',89,'12','A','science','2008-08-23'),
(1014,'Tani Rastogi','F',82,'12','A','science','2008-11-23');

select * from students;

-- 1 To display all the records form STUDENT table
  select * from students;
  
-- 2  To display any name and date of birth from the table STUDENT
   select St_name,DOB
   from students;
   
-- 3 To display all students record where percentage is greater of equal to 80 FROM student table. 
   select * from students
   where percentage>=80;
   
-- 4 To display student name, stream and percentage where percentage of student is more than 80 
   select St_name,streams,percentage
   from students
   where percentage >80;
   
-- 5 To display all records of science students whose percentage is more than 75 form student table.
   select * from students
   where streams = 'science' and percentage > 75;


