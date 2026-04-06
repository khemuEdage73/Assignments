use social_db;

CREATE TABLE employees(
id INT PRIMARY KEY,
name VARCHAR(30),
age INT,
salary INT,
department VARCHAR(30),
country VARCHAR(30)
);


INSERT INTO employees VALUES
(1, 'Kiran', 25, 40000, 'IT', 'India'),
(2, 'Ravi', 30, 55000, 'HR', 'India'),
(3, 'John', 28, 60000, 'IT', 'USA'),
(4, 'Sara', 35, 75000, 'Finance', 'UK'),
(5, 'Amit', 24, 45000, 'IT', 'India'),
(6, 'Neha', 29, 52000, 'HR', 'India'),
(7, 'David', 32, 72000, 'Finance', 'USA'),
(8, 'Priya', 27, 48000, 'IT', 'India'),
(9, 'Rahul', 31, 68000, 'IT', 'India'),
(10, 'Emma', 26, 51000, 'HR', 'UK');

SELECT * FROM employees;

SELECT name, salary FROM employees;

SELECT * FROM employees
WHERE country = "India";           -- employees from india

SELECT name, salary FROM employees
WHERE salary > 50000;                 -- employees who's salary > 50000

SELECT name, department FROM employees
WHERE department = "IT";             -- employees in department IT

SELECT * FROM employees
WHERE age BETWEEN 25 AND 30;    -- employees age between 25 and 30

SELECT * FROM employees
WHERE country = "India" OR country = "USA";

SELECT * FROM employees
ORDER BY salary desc;


SELECT * FROM employees
ORDER BY salary desc
LIMIT 3;                -- TOP 3 employees with highest salary

SELECT * FROM employees;

SELECT * FROM employees
WHERE name LIKE "R%";

SELECT COUNT(*) as total_emp FROM employees;          -- total employees

SELECT AVG(salary) as avg_sal FROM employees;

SELECT max(salary) FROM employees;

SELECT min(salary) FROM employees;

SELECT SUM(salary) FROM employees
WHERE department = "IT";

SELECT department, COUNT(*) FROM employees
GROUP BY department;

SELECT department, AVG(salary) FROM employees
GROUP BY department;

SELECT department, MAX(salary) AS high_sal FROM employees
GROUP BY department;

SELECT country, COUNT(*) FROM employees
GROUP BY country;

SELECT department, COUNT(*) AS total_emp
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

SELECT * FROM employees;

SELECT MAX(salary) FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

SELECT * FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT department, AVG(salary) AS avg_sal FROM employees
GROUP BY department
ORDER BY avg_sal DESC
LIMIT 1;

DELETE FROM employees
WHERE salary < 45000;

UPDATE employees
SET salary = salary + 5000
WHERE id IN (SELECT id FROM employees WHERE department = "IT");

SELECT department, COUNT(*)
FROM employees
WHERE COUNT(*) > 2   -- we can't use agg func in where
GROUP BY department;


SELECT department, name, COUNT(*)
FROM employees                          -- we can't use non aggregated columns
GROUP BY department;

SELECT * FROM employees
WHERE salary = NULL;

SELECT * FROM employees
ORDER BY salary DESC         -- use WHERE before ORDER BY
WHERE department = 'IT';

SELECT * FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;

SELECT salary * 12 AS yearly_salary
FROM employees                             -- WE can't use alias in where
WHERE yearly_salary > 600000;

SELECT *
FROM employees
HAVING salary > 50000;


