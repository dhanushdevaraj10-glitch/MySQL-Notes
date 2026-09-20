create database case_in_update;
use case_in_update;

## Example-1

create table emp_salary(name varchar(50) primary key,
                        salary decimal(10,2));

insert into emp_salary values ('Alice',60000),('David',75000),('Priya',52000),
                              ('John',45000),('Meera',30000),('Ravi',50000),
                              ('Kiran',25000),('Sita',28000);   
                              
select *,
  case
     WHEN salary > 50000 THEN 'High'
        WHEN salary BETWEEN 30000 AND 50000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
from emp_salary;

update emp_salary
 set  salary =
	 CASE
        WHEN salary > 50000 THEN salary + 1000  
        WHEN salary BETWEEN 30000 AND 50000 THEN salary + 2000 
        ELSE salary + 3000                       
    END;
    
set sql_safe_updates = 0;

##Example-2

create table emp_depts(emp_name varchar(50) primary key,
                      dep_name varchar(50));

insert into emp_depts values ('Alice','IT'),('David','IT'),('Priya','IT'),
                              ('John','HR'),('Meera','HR'),('Ravi','HR'),
                              ('Kiran','Others'),('Sita','Others'); 

select 
  case
     when dep_name = 'IT' then 'Tech Team'
     when dep_name = 'HR' then 'Human Resource'
     else 'Other Dept'
   end as department_category,
   group_concat(emp_name order by emp_name separator ", " ) as Employees
   from emp_dept
   group by department_category
   order by department_category;

update  emp_depts
 set dep_name=
     case 
        when dep_name = 'IT' then 'Tec team'
     when dep_name = 'HR' then 'Hum res'
     else 'Oth dep'
     end;
  
  select * from emp_depts;
