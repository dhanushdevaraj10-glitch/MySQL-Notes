create database DDL;
use DDL;

create table employee(emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    department VARCHAR(30)
);

alter table employee 
add hire_date date;

select * from staff;

alter table employee
modify salary decimal(12,2);

alter table employee
rename column emp_name to employee_name;

create table depart_ments (dept_id int primary key,
						  dept_name varchar(30));

alter table employee 
modify department int;

ALTER TABLE Employee
ADD CONSTRAINT fk_department
FOREIGN KEY (department) REFERENCES Depart_ments(dept_id);

INSERT INTO  Employee (emp_id, employee_name, salary, department, hire_date) VALUES
(101, 'Alice Johnson', 55000.00, 1, '2022-05-10'),
(102, 'Bob Smith'    , 72000.00, 2, '2021-11-23'),
(103, 'Charlie Brown', 65000.00, 3, '2023-01-15'),
(104, 'Diana Prince' , 48000.00, 4, '2020-09-01');

INSERT INTO Depart_ments (dept_id, dept_name) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

TRUNCATE TABLE Employee;

DROP TABLE Depart_ments;

ALTER TABLE Employee
RENAME TO Staff;

                         
                          
                          