create database case_in_select;
use case_in_select;

create table employees(name varchar(50),
					   salary int );

insert into employees values("Dhanush", 50000),
							("Arun",60000),
                            ("Bala",30000);

select distinct(name),salary,
    case 
       when salary > 30000 then "high"
       else "low"
    end as salary_status
from employees;    

/*example sum-1*/

create table workers(employee_name varchar(50) primary key, 
                      salary int );
                      
insert into workers values("Dhanush",50000),
						  ("Arun",40000),
                          ("Rakesh",30000),
                          ("Alice",20000);

select employee_name,salary,
   case 
     when salary>45000 then "high"
     when salary between 20000 and 40000 then "medium"
     else 'low'
   end as salary_category
from workers;  


/*example sum-2*/

create table depo_name(employee_name varchar(50) primary key, 
                      department varchar(50));

insert into depo_name values ('Dhanush','IT'),
                             ('Arun','HR'),
                             ('Bala','Others');
select *,  
   case department
     when 'IT' then 'Tech Team'
     when 'HR' THEN 'Human Resource' 
     else 'Other depo'
   end as dep_name
from depo_name;   


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

select *,
   case
	 when salary > 50000 then salary * 0.10
     else salary * 0.05
   end as Bonusactor
from emp_bonus;   
                            
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

select *,
  case 
    when salary > 50000 then salary * 0.10
	else salary * 0.05
   end as Bonus,
  
  case
    when emp_id % 2 =0 then 'Even'
    else 'Odd'
  end as id_type  
from emp_id;   
               
/*Example-5*/

create table experience ( emp_id int auto_increment primary key,
                          name  varchar(50) unique,
                          salary decimal(10,2),
                          Years int);   
 
 
 insert into experience(name,salary,Years) values 
                                        ('Dhanush',70000,5),
							            ('Arun',40000,7),
                                        ('Mukesh',45000,9),
                                        ('Bala',66000,4),
                                        ('Ramesh',32000,5),
                                        ('Alice',48000,6),
                                        ('Bob',55000,8),
                                        ('Charlie',49000,2);
                                        
                                        
select *,
  case 
    when years > 5 then 'Senior'
    when years between 3 and 5 then 'Mid-Level'
    else 'Freshers'
  end as Level
from   experience;