create database case_in_where;
use case_in_where;

create table employees (name varchar(50) primary key,
                        department varchar(20) not null,
                        salary int );

insert into employees values ("Dhanush","IT",30000),
							 ("Arun","A/C",50000),
                             ("Bala","IT",20000);

select * from employees
   where
     case
        when department ='IT' then salary>10000
        else salary<5000
        end;
        
/*Example-1*/

create table emp_salary(name varchar(50) primary key,
                        salary decimal(10,2));


insert into emp_salary values ('Alice',60000),('David',75000),('Priya',52000),
                              ('John',45000),('Meera',30000),('Ravi',50000),
                              ('Kiran',25000),('Sita',28000);   
                              
select * ,
CASE 
        WHEN salary > 50000 THEN 'High'
        WHEN salary BETWEEN 30000 AND 50000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
from emp_salary       
    where
      case 
		 when salary > 50000 THEN 'High'
         when salary BETWEEN 30000 AND 50000 THEN 'Medium'
         else 'Low'
      end ='high';

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
   where 
     case 
       when dep_name = 'IT' then 'Tech Team'
       when dep_name = 'HR' then 'Human Resource'
       else 'Other Dept'
     end = 'Tech Team';
     
/*Example-3*/

create table emp_bonus(name varchar(50) primary key,
                        salary decimal(10,2));

insert into emp_bonus values ('Alice',60000),('David',75000),('Priya',52000),
                              ('John',45000),('Meera',30000),('Ravi',50000),
                              ('Kiran',25000),('Sita',28000);   

select * ,
  case 
    when salary > 50000 then salary *0.10
    else salary * 0.05
  end as Bonus 
 from  emp_bonus 
   where
     case 
         when salary > 50000 then salary *0.10
		 else salary * 0.05
     end =salary * 0.10;   
     
      
                       