create database sub_query;
use sub_query;


create table emp (employee_id int primary key,
				  employee_name varchar(30),
                  salary decimal(10,2));
                  
insert into emp values (1,'Alice',3000),
					   (2,'Bob',4000),
                       (3,'Charlie',5000),
                       (4,'Diana',6000);                  
                  
select employee_name 
from emp
where salary > (select avg(salary) from emp);    

##example-1
create table product(product_id int primary key,
                     product_name varchar(50),
                     category_id int, 
				     price decimal(10,2));
                     
insert into product values 
(1, 'Pen', 10, 5),
(2, 'Pencil', 10, 2),
(3, 'Notebook', 10, 7),
(4, 'Eraser', 10, 2),
(5, 'Phone', 20, 300),
(6, 'Charger', 20, 100);


select product_name,category_id,price
from product p
where price > (select min(price) from product where category_id =p.category_id);



                     

              
