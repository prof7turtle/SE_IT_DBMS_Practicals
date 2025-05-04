create database practice;
use practice;
CREATE TABLE Department (
    dId INT PRIMARY KEY,
    Dname VARCHAR(100),
    location VARCHAR(100)
);

-- Create Employee Table
CREATE TABLE Employee (
    eid INT PRIMARY KEY,
    e_name VARCHAR(100),
    e_city VARCHAR(100),
    salary INT,
    dId INT,
    FOREIGN KEY (dId) REFERENCES Department(dId)
);

-- Insert Sample Data into Department
INSERT INTO Department (dId, Dname, location) VALUES
(1, 'IT', 'Building A'),
(2, 'HR', 'Building B'),
(3, 'Finance', 'Building C');

-- Insert Sample Data into Employee
INSERT INTO Employee (eid, e_name, e_city, salary, dId) VALUES
(101, 'Karan', 'Delhi', 20000, 1),
(102, 'Komal', 'Mumbai', 50000, 2),
(103, 'Alice', 'Delhi', 30000, 1),
(104, 'Bob', 'Chennai', 40000, 3),
(105, 'Kishore', 'Kolkata', 20000, 2);

DELETE FROM Employee
WHERE e_city = 'Delhi';

SELECT *
FROM Employee
WHERE e_name LIKE 'K%';

select d.Dname, Sum(e.salary) as sum_salary from Department as D JOIN Employee as e ON d.dID=e.dId group by d.Dname;


SELECT *
FROM Employee
WHERE salary = 20000 OR salary = 50000;
