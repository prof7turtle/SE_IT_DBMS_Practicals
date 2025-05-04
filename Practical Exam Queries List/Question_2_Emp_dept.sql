create database practice;
use practice;

CREATE table dept
(d_id int primary key,
d_name varchar(100),
location varchar(200)
);

CREATE table emp
(e_id int primary key,
e_name varchar(100),
e_city varchar(100),
d_id int ,
FOREIGN KEY(d_id) references dept(d_id)
);
alter table emp add salary int;

-- Insert into dept
INSERT INTO dept (d_id, d_name, location) VALUES
(1, 'IT', 'Building A'),
(2, 'HR', 'Building B'),
(3, 'Finance', 'Building C');

-- Insert into emp
INSERT INTO emp (e_id, e_name, e_city, d_id, salary) VALUES
(101, 'Alice', 'Delhi', 1, 30000),
(102, 'Bob', 'Mumbai', 1, 45000),
(103, 'Charlie', 'Delhi', 2, 25000),
(104, 'David', 'Chennai', 3, 55000),
(105, 'Eve', 'Kolkata', 1, 20000);

select * from emp;
select * from dept;

-- Query 1
select avg(salary) from emp where d_id=1;
-- Query1 Advanced for every Department
select d.d_name, AVG(e.salary) as avg_salary 
from emp e
left join 
dept d ON e.d_id = d.d_id group by d.d_name;

-- QUery2
update dept set location ='Chennai' where d_id=2;

-- Query3
select * from emp where salary between 20000 and 50000;

-- Query4
select * from emp where d_id=1;
