create database practice;
use practice;

create table course(
c_id int primary key,
c_name varchar(255),
duration int);

create table student(
s_id int primary key,
s_name varchar(100) NOT NULL,
s_city varchar(100),
c_id int,
FOREIGN KEY(c_id) REFERENCES course(c_id)
);

insert into course
values
(1,'Maths',1),
(2,'English',1),
(3,'Science',2);
select * from course;

insert into student
values
(1,'Harshil','Mumbai',1),
(2,'Abhi','Pune',3),
(3,'Ajay','Delhi',1);

select * from student;
-- Query1
select C.c_name ,COUNT(S.s_id) AS student_count From course C
LEFT JOIN student S ON S.c_id=C.c_id GROUP BY C.c_name;

-- Query2
update course set duration=duration+1 where c_id=2;

-- Query3
select s_name from student where s_name like 'H%';


