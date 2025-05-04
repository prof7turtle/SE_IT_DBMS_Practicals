create database practice;
use practice;
show tables;

create table student(
s_id int auto_increment primary key,
s_name varchar(100),
s_city varchar(100)
);

DELIMITER //
Create procedure add_and_show_details(
	IN p_name varchar(100),
    IN p_city varchar(100)
)
BEGIN
	insert into student (s_name,s_city)
    values (p_name,p_city);
    
    select * from student;
    
END //
DELIMITER ;

CALL add_and_show_details('harshil', 'Mumbai');
CALL add_and_show_details('Ajay', 'Goa');






