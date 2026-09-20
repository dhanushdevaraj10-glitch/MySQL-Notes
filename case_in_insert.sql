create database case_in_insert;
use case_in_insert;
                              
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    salary_category VARCHAR(20)
);
INSERT INTO Employees (emp_id, emp_name, department, salary, salary_category)
VALUES
(1, 'Alice', 'HR', 28000,
    CASE
        WHEN 28000 > 50000 THEN 'High'
        WHEN 28000 BETWEEN 30000 AND 50000 THEN 'Medium'
        ELSE 'Low'
    END
),
(2, 'Bob', 'Finance', 35000,
    CASE
        WHEN 35000 > 50000 THEN 'High'
        WHEN 35000 BETWEEN 30000 AND 50000 THEN 'Medium'
        ELSE 'Low'
    END
),
(3, 'Charlie', 'IT', 52000,
    CASE
        WHEN 52000 > 50000 THEN 'High'
        WHEN 52000 BETWEEN 30000 AND 50000 THEN 'Medium'
        ELSE 'Low'
    END
);             

select * from employees;                 

