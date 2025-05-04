CREATE DATABASE practice;
USE practice;

CREATE TABLE student (
    s_id INT PRIMARY KEY,
    s_name VARCHAR(100),
    s_city VARCHAR(100),
    marks INT
);

ALTER TABLE student ADD email VARCHAR(255);

INSERT INTO student VALUES
(1, 'Harshil', 'Mumbai', 93, 'abc@gmail.com'),
(2, 'Ajay', 'Vimal', 62, 'abc2@gmail.com'),
(3, 'Arun', 'Delhi', 84, 'abc3@gmail.com');

SELECT * FROM student;

UPDATE student SET email = 'abc18@gmail.com' WHERE s_id = 1;

DELETE FROM student WHERE s_id = 3;

CREATE VIEW vw_student AS
SELECT s_name, marks FROM student;

SELECT * FROM vw_student;

DELIMITER //
CREATE TRIGGER check_before_insert
BEFORE INSERT ON student
FOR EACH ROW
BEGIN
    IF NEW.marks < 0 OR NEW.marks > 100 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Enter marks between 0 and 100';
    END IF;
END;
//
DELIMITER ;

-- This will FAIL due to trigger (marks > 100)
INSERT INTO student VALUES (3, 'Arun', 'Delhi', 101, 'abc3@xyz.com');

-- This will SUCCEED (marks in range)
INSERT INTO student VALUES (3, 'Arun', 'Delhi', 76, 'abc3@xyz.com');

SELECT * FROM student;
