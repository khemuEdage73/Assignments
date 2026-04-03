SHOW DATABASES;

USE social_db;
-- AVG
SELECT * FROM employees;

DESCRIBE employees;

SELECT AVG(age) FROM employees;

SELECT AVG(age) FROM employees where country = "UK";

-- age 

SELECT AVG(salary) FROM employees WHERE department = "IT" AND salary > 45000;

SELECT * FROM employees;
SELECT COUNT(*) FROM employees;

SELECT * FROM employees;
SELECT COUNT(age) FROM employees;

SELECT COUNT(*) FROM employees WHERE country = 'India';

SELECT COUNT(age) FROM employees WHERE country = 'India' and age > 30;

SELECT COUNT(*) FROM employees WHERE department = 'IT';

SELECT COUNT(distinct department) FROM employees;


SELECT department FROM employees
GROUP BY department;

SELECT department, COUNT(*) AS total_emp FROM employees
GROUP BY department;

SELECT department, SUM(salary) AS total_sal FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS total_sal FROM employees
GROUP BY department;

SELECT name, department FROM employees
GROUP BY department;

SELECT department, country, COUNT(*) FROM employees
GROUP BY department, country;

SELECT department, MIN(salary) as min_sal FROM employees
GROUP BY department;

SELECT department, MAX(salary) as min_sal FROM employees
GROUP BY department;

SELECT department, SUM(salary) AS total_sal FROM employees
GROUP BY department;

SELECT department,
COUNT(*) AS total_emp,
MIN(salary) AS min_sal,
MAX(salary)AS max_sal,
SUM(salary) AS total_sal,
AVG(salary) AS avg
FROM employees
GROUP BY department;

-- Having
-- order of execution 
-- from -> where->group by->having -> select -> orderby

SELECT department,
COUNT(*) AS total_emp,
MIN(salary) AS min_sal,
MAX(salary)AS max_sal,
SUM(salary) AS total_sal,
AVG(salary) AS avg
FROM employees
GROUP BY department
HAVING total_sal > 260000;


-- department with less than 5 employees

SELECT department,
COUNT(*) AS total_emp
FROM employees
GROUP BY department
HAVING total_emp < 6;

SELECT department,
COUNT(*) AS total_emp
FROM employees
GROUP BY department
HAVING total_emp >= 2;



SELECT * FROM cart;

CREATE TABLE transactions
(id INT PRIMARY KEY auto_increment,
 product VARCHAR(30), 
 region VARCHAR(30),
 qauntity INT);
 
 
 INSERT INTO transactions (product, region, qauntity)
 VALUES
 ("Laptop", "North", 5),
 ("Laptop", "south", 7),
 ("phone", "North", 10),
 ("phone", "south", 8),
 ("Laptop", "North", 6);




