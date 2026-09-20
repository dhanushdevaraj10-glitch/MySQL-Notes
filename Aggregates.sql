create database Aggregates;
use Aggregates;

create table students(id int auto_increment primary key,
					  std_name varchar(50) unique,
					  age int);
select * from students;

                           
insert into students (std_name, age) values('naveen', 20),('Vinoth', 20),('Dhanush',19);

select count(std_name) from students;
select sum(age),min(age),avg(age),max(age) from students;


