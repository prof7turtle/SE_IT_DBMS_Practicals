-- Create and use the database
CREATE DATABASE IF NOT EXISTS university;
USE university;

-- Create Course table
CREATE TABLE Course (
    c_Id INT PRIMARY KEY,
    c_name VARCHAR(100),
    duration INT
);

-- Create Student table
CREATE TABLE Student (
    Rno INT PRIMARY KEY,
    S_name VARCHAR(100),
    S_city VARCHAR(100),
    c_Id INT,
    FOREIGN KEY (c_Id) REFERENCES Course(c_Id)
);

-- Insert sample data into Course
INSERT INTO Course (c_Id, c_name, duration) VALUES
(1, 'Mathematics', 4),
(2, 'Physics', 5),
(3, 'Chemistry', 3),
(4, 'Biology', 2),
(5, 'Computer Science', 6);

-- Insert sample data into Student
INSERT INTO Student (Rno, S_name, S_city, c_Id) VALUES
(101, 'ABC', 'Delhi', 1),
(102, 'XYZ', 'Mumbai', 2),
(103, 'PQR', 'Chennai', 3),
(104, 'LMN', 'Delhi', 4),
(105, 'DEF', 'Kolkata', 2);

-- b. Find number of students for a specific course (example: course id = 2)
SELECT c.c_name, COUNT(s.Rno) AS num_students
FROM Student s
JOIN Course c ON s.c_Id = c.c_Id
WHERE s.c_Id = 2
GROUP BY c.c_name;

-- c. Delete all the students living in a specific city (example: 'Delhi')
DELETE FROM Student
WHERE S_city = 'Delhi';

-- d. Display list of courses having duration between 2 and 5
SELECT *
FROM Course
WHERE duration BETWEEN 2 AND 5;

-- e. Display name of the course for which student with name 'ABC' has registered
SELECT c.c_name
FROM Student s
JOIN Course c ON s.c_Id = c.c_Id
WHERE s.S_name = 'ABC';
