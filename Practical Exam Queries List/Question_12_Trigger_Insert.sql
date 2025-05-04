create database practice;
use practice;
show tables;
create table student (
s_id int auto_increment primary key,
s_name varchar(100),
s_city varchar(100),
marks int);

DELIMITER //
CREATE TRIGGER check_marks_before_insert
Before INSERT ON student
FOR EACH ROW
Begin
	IF new.marks<0 OR new.marks>100 
		then SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Marks not between 0 and 100';
	end if;
END;
//
DELIMITER ;

insert into student(s_name,s_city,marks)
value('Harshil','Mumbai',94);
select * from student;
insert into student(s_name,s_city,marks)
value('Ajay','Vimal',102);
	
	



