create database practice;
use practice;
CREATE TABLE Employee (
    eid INT PRIMARY KEY,
    e_name VARCHAR(100),
    salary INT,
    bonus INT
);

-- Insert sample data
INSERT INTO Employee (eid, e_name, salary, bonus) VALUES
(1, 'Alice', 30000, 2000),
(2, 'Bob', 45000, 3000),
(3, 'Charlie', 25000, 1500),
(4, 'Komal', 50000, 4000),
(5, 'Karan', 20000, 1000);

-- Arithmetic operations (3 operations)
select e_name, salary ,(salary+bonus) AS Net_salary from employee;
select e_name, salary ,(salary-bonus) from employee;
select e_name, salary ,(salary*2) from employee;


-- b. Aggregate functions (3 operations)

select sum(salary) as Total_salary from employee;
select AVG(salary) from employee;
select count(*) As number_of_emp from employee;



