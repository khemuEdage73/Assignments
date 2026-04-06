CREATE TABLE customers(
customer_id INT primary key auto_increment,
name VARCHAR(30),
email VARCHAR(30)
);

CREATE TABLE  orders(
order_id INT PRIMARY KEY auto_increment,
order_date DATE,
customer_id INT,
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)
);



describe orders;
SELECT * FROM orders;

INSERT INTO customers (name, email)
VALUES('John', 'John@gmail.com'),
('Mike', 'Mike@gmail.com');

SELECT * FROM customers;

INSERT INTO orders(order_date, customer_id)
VALUES ('2026-03-03',1);

INSERT INTO orders(order_date, customer_id)
VALUES ('2026-03-03',99);  -- 

SELECT * FROM orders 
WHERE customer_id=(
SELECT customer_id FROM customers WHERE name='John');


-- DELETE 
DELETE FROM customers WHERE customer_id = 1;


-- one to one

CREATE TABLE person(
person_id INT PRIMARY KEY auto_increment,
name VARCHAR(30));

CREATE TABLE passport(
passport_id INT PRIMARY KEY auto_increment,
series  VARCHAR(30),
person_id INT UNIQUE,       -- ONE TO ONE passport can't have duplicate values
FOREIGN KEY (person_id)
REFERENCES person(person_id)
);

INSERT INTO  person(name)
VALUES("Tom"),
("Mike"),
("John"),
("David");

SELECT * FROM person;
SELECT * FROM passport;

INSERT INTO passport(series, person_id)
VALUES("UNS6677", 1);

INSERT INTO passport(series, person_id)
VALUES("UNS6633", 1);


-- many to many

CREATE TABLE students(
std_id INT PRIMARY KEY auto_increment,
std_name VARCHAR(30));

CREATE TABLE courses(
course_id INT PRIMARY KEY auto_increment,
course_name VARCHAR(30));

CREATE TABLE enrollments(
std_id INT,
course_id int,
FOREIGN KEY (std_id)
REFERENCES students(std_id),
FOREIGN KEY (course_id)
REFERENCES courses(course_id),
PRIMARY KEY(std_id, course_id)
);

INSERT INTO students(std_name)
VALUES('BOB'),('DON'),('SMITH');

INSERT INTO courses(course_name)
VALUES ("JAVA"),("C++"),("PYTHON");


SELECT * FROM students;
SELECT *FROM courses;

INSERT INTO enrollments(std_id, course_id)
VALUES(1,1),
(1,2),
(2,3),
(2,1),
(3,1),
(3,2);

SELECT *FROM enrollments;

INSERT INTO enrollments(std_id, course_id)
VALUES(1,1);




