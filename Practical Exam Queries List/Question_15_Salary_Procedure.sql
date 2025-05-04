create database practice;
use practice;
show tables;

create table employee(
e_id int auto_increment primary key,
e_name varchar(100),
e_dept varchar(100),
e_salary int,
e_city varchar(255)
);

insert into employee(e_name,e_dept,e_salary,e_city)
values 
('Harshil','IT',10000,'Mumbai'),
('Ajay','IT',7000,'Vimal'),
('Arun','HR',5000,'Mumbai');

Delimiter //
create procedure highest_salary()
    Begin
		select * from employee where e_salary=(select Max(e_salary) as Max_sal from employee);
	END //
    
    Delimiter ;
    
 
    
call highest_salary();
select * from employee;
		



