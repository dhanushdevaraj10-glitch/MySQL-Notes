create database SQL_Join;
use SQL_Join;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT
);

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO Employees (emp_id, emp_name, dept_id) VALUES
(1, 'Alice', 1),
(2, 'Bob', 2),
(3, 'Charlie', 3),
(4, 'David', 2),
(5, 'Eve', NULL);

INSERT INTO Departments (dept_id, dept_name) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

##inner join
SELECT e.emp_name, d.dept_name
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;

##left join
select e.emp_name, d.dept_name
from employees e
left join departments d
on e.dept_id = d.dept_id;

##right join
select e.emp_name, d.dept_name
from employees e
right join departments d
on e.dept_id = d.dept_id;

##cross join
SELECT e.emp_name, d.dept_name
FROM Employees e
CROSS JOIN Departments d;



