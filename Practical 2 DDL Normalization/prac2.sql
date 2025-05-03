-- Create Database
CREATE DATABASE prac2;
USE prac2;

-- Create Customer Table
CREATE TABLE customer(
  cust_id INT PRIMARY KEY,
  cust_name VARCHAR(255) NOT NULL,
  cust_phone INT
);

-- Create Food Table
CREATE TABLE food(
  food_id INT PRIMARY KEY,
  food_name VARCHAR(100),
  price INT
);

-- Create Food_Order Table (junction table between Customer and Food)
CREATE TABLE food_order(
  order_id INT PRIMARY KEY,
  cust_id INT,
  food_id INT,
  order_date DATE,
  FOREIGN KEY(cust_id) REFERENCES customer(cust_id),
  FOREIGN KEY(food_id) REFERENCES food(food_id)
);

-- Insert Data into Customer Table
INSERT INTO customer 
VALUES (1, 'Harshil', 989),
       (2, 'Ajay', 7977),
       (3, 'Abhishek', 98971);

-- Insert Data into Food Table
INSERT INTO food
VALUES (1, 'Pizza', 199),
       (2, 'Pasta', 230),
       (3, 'Burger', 79);

-- Insert Data into Food_Order Table
INSERT INTO food_order
VALUES (1, 1, 1, '2025-05-04'),
       (2, 2, 1, '2025-05-04'),
       (3, 3, 2, '2025-05-04');

-- Query to Check Data in Customer Table
SELECT * FROM customer;

-- Query to Check Data in Food Table
SELECT * FROM food;

-- Query to Check Data in Food_Order Table
SELECT * FROM food_order;
