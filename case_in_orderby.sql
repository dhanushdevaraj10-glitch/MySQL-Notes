create database case_in_orderby;
use case_in_orderby;

/*Example-1*/

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
from emp_salary  

order by 
   case
     when salary > 50000 then 1
      WHEN salary BETWEEN 30000 AND 50000 THEN 2
        ELSE 3
    end ;
    
/*Example-2*/

create table emp_dept(emp_name varchar(50) primary key,
                      dep_name varchar(50));

insert into emp_dept values ('Alice','IT'),('David','IT'),('Priya','IT'),
                              ('John','HR'),('Meera','HR'),('Ravi','HR'),
                              ('Kiran','Others'),('Sita','Others'); 

select *,
  case
     when dep_name = 'IT' then 'Tech Team'
     when dep_name = 'HR' then 'Human Resource'
     else 'Other Dept'
   end as department_category
from emp_dept
order by
 case 
      when dep_name = 'IT' then 1
     when dep_name = 'HR' then  2
     else 3
  end;   
  
  
    
    
						

