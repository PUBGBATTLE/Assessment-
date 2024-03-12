create database Sun;
use Sun;

create table workers (
worker_id int primary key,
first_name VARCHAR(255) NOT NULL,
last_name varchar(255) not null,
salary decimal (10,2),
joining_date date,
department varchar(50) not null
);

insert into workers (worker_id,first_name,last_name,salary,joining_date,department) values
(1,'Monika','Arora',100000,'2014-2-20','HR'),
(2,'Niharika','Varma',80000,'2014-06-11','Admin'),
(3,'Vishal','Singhal',300000,'2014-02-20','HR'),
(4,'Amitab','Singh',500000,'2014-02-20','Admin'),
(5,'Vivek','Bhati',500000,'2014-06-14','Admin'),
(6,'Vipul','Diwan',200000,'2014-06-11','Account'),
(7,'Satish','Kumar',75000,'2014-01-20','Account'),
(8,'Geetika','Chauhan',90000,'2014-04-11','Admin');

select * from workers;

-- 1  Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
  
  select * from workers
   order by first_name ASC,
   department desc;
   
   -- 2 .Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table. 
   
      select * from workers
      where  first_name in ('Vipul', 'Satish');

-- 3 Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
   select * from workers
   where first_name like'_h';
   
   -- 4 Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
     select worker_id,first_name,last_name,salary,joining_date,department
     from workers
     group by worker_id,first_name,last_name,salary,joining_date,department
     having count(*) >1;
     
     -- 5 Write an SQL query to show the top 6 records of a table. 
       select * from workers
       limit 6;
       
  -- 6 Write an SQL query to fetch the departments that have less than five people in them. 
     select department
     from workers
     group by department
     having count(worker_id) < 5;
     
-- 7 Write an SQL query to show all departments along with the number of people in there.
   select department,count(worker_id) as number_workers
   from workers
   group by department;

-- 8 Write an SQL query to print the name of employees having the highest salary in each department. 
   select department, first_name, last_name, salary
   from workers
   where (department ,salary) in (select department, max(salary) from workers group by department);
   

   

   






