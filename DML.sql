create database DML;
use dml;

create table employees (emp_id int primary key, 
						emp_name varchar(50), 
                        salary decimal(10,2), 
                        department varchar(50));

insert into employees values (101, 'John', 45000, 'HR'),
                             (102, 'Mary', 55000, 'Finance'),
							 (103, 'David', 60000, 'IT');
                             
select * from employees; 


select * from employees 
 where department = 'HR';   ## Display all employees who work in the "HR" department.
 
update employees 
set salary = salary * 1.10
where department ='IT';      ##Increase the salary of employees in the "IT" department by 10%.

set sql_safe_updates=0;

delete from employees 
where emp_id =102;          ## Delete the employee whose emp_id = 102.

select * from employees 
where salary >50000;         ## Retrieve all employees whose salary is greater than 50000.


select emp_name , department from employees ;       ##Display only `emp_name` and `department` for all employees.

update employees 
set department = 'Admin'
where emp_name ='david';                         ##Change the department of "David" to "Admin".

delete  from employees                            
where department='HR';                           ## Delete all employees from the "HR" department.


 
                             
