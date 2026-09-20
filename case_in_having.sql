create database case_in_having;
use case_in_having;

create table employees ( emp_id int primary key,
                         emp_name varchar (50),
                         department varchar(20)
                         );
 
INSERT INTO Employees (emp_id, emp_name, department) VALUES
(1, 'Alice', 'HR'),
(2, 'Bob', 'HR'),
(3, 'Charlie', 'HR'),
(4, 'David', 'Finance'),
(5, 'Eve', 'Finance'),
(6, 'Frank', 'IT'),
(7, 'Grace', 'IT'),
(8, 'Heidi', 'IT'),
(9, 'Ivan', 'IT');


select department,
   count(*) as total
from employees
group by department
having count(*) > 2;

SELECT emp_name
FROM Employees
WHERE department IN (
    SELECT department
    FROM Employees
    GROUP BY department
    HAVING COUNT(*) > 2
);
