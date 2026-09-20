create database case_in_groupby;
use case_in_groupby;

/*Example-1*/

create table emp_salary(name varchar(50) primary key,
                        salary decimal(10,2));

insert into emp_salary values ('Alice',60000),('David',75000),('Priya',52000),
                              ('John',45000),('Meera',30000),('Ravi',50000),
                              ('Kiran',25000),('Sita',28000);  

select 
   case
        WHEN salary > 50000 THEN 'High'
        WHEN salary BETWEEN 30000 AND 50000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category,
    group_concat(name ORDER BY name SEPARATOR ', ') AS employees
FROM emp_salary
GROUP BY salary_category
ORDER BY salary_category;

/*Example-2*/

create table emp_dept(emp_name varchar(50) primary key,
                      dep_name varchar(50));

insert into emp_dept values ('Alice','IT'),('David','IT'),('Priya','IT'),
                              ('John','HR'),('Meera','HR'),('Ravi','HR'),
                              ('Kiran','Others'),('Sita','Others'); 

select
  case 
    when dep_name = 'IT' then 'Tech Team'
     when dep_name = 'HR' then 'Human Resource'
     when dep_name = 'Others' then 'Other dept'
   end as department_category,
   group_concat(emp_name order by emp_name separator ", " ) as Employees
   from emp_dept
   group by department_category
   order by department_category;
   

/*Example-3*/
   
create table emp_bonus(Name varchar(50) primary key,
					   Salary int);

insert into emp_bonus values('Dhanush',70000),
							('Arun',40000),
                            ('Mukesh',45000),
                            ('Bala',66000),
                            ('Ramesh',32000),
                            ('Alice',48000),
                            ('Bob',55000),
                            ('Charlie',49000);

select
  case 
    when salary > 50000 then 'High Salary'
    else 'Medium/Low'
  end as salary_category,
  group_concat(name order by name separator " , ") as Employees,
  sum(salary) as Total_salary,
  sum(
       case 
			WHEN salary > 50000 THEN salary * 0.10
            ELSE salary * 0.05
        end     
            ) as Total_bonus 
from emp_bonus
group by salary_category
order by salary_category;

/*Example-4*/

create table emp_id( emp_id int auto_increment primary key,
                     name  varchar(50) unique,
                     salary decimal(10,2)
                     );

insert into emp_id (name,salary) values ('Dhanush',70000),
							            ('Arun',40000),
                                        ('Mukesh',45000),
                                        ('Bala',66000),
                                        ('Ramesh',32000),
                                        ('Alice',48000),
                                        ('Bob',55000),
                                        ('Charlie',49000);

select 
  case 
    when emp_id % 2= 0 then 'Even ID'
    else 'Odd ID'
  end as Id_Category ,
  group_concat(name order by name separator ' , ') as Employees,
  sum(salary) as Total_Salary,
  count(name) as Total_Employees
  from emp_id
  group by Id_Category 
  order by Id_Category; 
  
    
    

    
 
   


                       