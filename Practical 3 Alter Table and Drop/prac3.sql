create database prac1;
use prac1;

-- table Customer
CREATE TABLE customer(
cust_id int primary key,
cust_name varchar(255) NOT NULL,
cust_phone int);

-- table food
CREATE TABLE food(
food_id int primary key,
food_name varchar(100),
price int);

-- table food_order
create table food_order(
order_id int primary key,
cust_id int,
food_id int,
order_date DATE,
FOREIGN KEY(cust_id) REFERENCES customer(cust_id),
FOREIGN KEY(food_id) REFERENCES food(food_id)
);

insert into customer 
values(1,'Harshil',989),
(2,'Ajay',7977),
(3,'Abhishek',98971);
select * from customer;

insert into food
values(1,'Pizza',199),
(2,'Pasta',230),
(3,'Burger',79);
select * from food;

insert into food_order
values(1,1,1,'2025-05-04'),
(2,2,1,'2025-05-04'),
(3,3,2,'2025-05-04');

select * from food_order;
-- alter commands
ALTER table customer ADD age int default 10;
alter table customer DROP column age;
ALTER table food_order ADD cost int;

-- Drop Table Commands
DROP table IF EXISTS food_order;
show tables in prac1;

