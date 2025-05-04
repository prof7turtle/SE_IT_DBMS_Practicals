create database practice;
use practice;

CREATE TABLE Course (
    c_Id INT PRIMARY KEY,
    c_name VARCHAR(100),
    duration INT
);

CREATE TABLE Student (
    Rno INT PRIMARY KEY,
    S_name VARCHAR(100),
    S_city VARCHAR(100),
    c_Id INT,
    FOREIGN KEY (c_Id) REFERENCES Course(c_Id)
);


-- Insert values into Course
INSERT INTO Course (c_Id, c_name, duration) VALUES
(1, 'Mathematics', 4),
(2, 'Physics', 5),
(3, 'Chemistry', 3),
(4, 'Biology', 2),
(5, 'Computer Science', 5);

-- Insert values into Student
INSERT INTO Student (Rno, S_name, S_city, c_Id) VALUES
(101, 'ABC', 'Delhi', 1),
(102, 'XYZ', 'Mumbai', 2),
(103, 'PQR', 'Chennai', 3),
(104, 'LMN', 'Delhi', 4),
(105, 'DEF', 'Kolkata', 5);

select * from course;
select * from student;

SET SQL_SAFE_UPDATES=0; -- used when where condition uses other than primary key column
delete from student where S_city='Kolkata';
SET SQL_SAFE_UPDATES=1;

select c_name from course where duration between 2 and 5;

CREATE view vw_course AS select * from course where duration=5; 
select * from vw_course;

select c.c_name from Course AS c inner join student as s ON c.c_id =s.c_id where s.S_name='ABC';
