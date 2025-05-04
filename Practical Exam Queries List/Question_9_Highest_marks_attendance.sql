create database practice;
use practice;
create table student(
s_id int primary key,
s_name varchar(255),
s_att int,
maths_marks int,
dbms_marks int);
insert into student
values
(1,'Harshil',61,28,22),
(2,'Ajay',76,21,24),
(3,'Arun',82,23,26),
(4,'Abhi',92,30,27),
(5,'Varun',48,12,14);

select s_name,maths_marks from student where maths_marks=(select max(maths_marks) from student);

select s_name,s_att from student where s_att=(select min(s_att) from student);

select count(*) from student;

select avg(dbms_marks) from student;
