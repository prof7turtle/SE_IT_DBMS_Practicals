create database practice;
use practice;
show tables;

CREATE table employee(
e_id int primary key,
e_name varchar(100),
e_city varchar(100),
salary int
);
insert into employee
values
(1,'Harshil','Mumbai',100),
(2,'Ajay','Pune',25),
(3,'Arun','Delhi',50),
(4,'Jiten','Ujjain',10);


create view vw_emp as select * from employee order by e_name DESC;
select * from vw_emp;

alter table employee add email varchar(255);
update employee set email='abc@gmail.com' where e_id=1;
update employee set email='abc2@gmail.com' where e_id=2;
update employee set email='abc3@gmail.com' where e_id=3;

alter view vw_emp as select * from employee;
select * from vw_emp;
