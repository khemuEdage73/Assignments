show databases;

USE social_db;

SHOW TABLES;

CREATE TABLE employees(
id INT PRIMARY KEY auto_increment,
  name VARCHAR(30),
  age INT, salary INT, 
  department VARCHAR(30), 
  country VARCHAR(30));
  
  
  INSERT INTO employees(name, age, salary, department, country)
  VALUES('Amit Sharma', 28, 45000, 'IT', 'India'),
('John Miller', 34, 62000, 'Finance', 'USA'),
('Priya', 25, 39000, 'HR', 'India'),
('Carlos Gomez', 41, 72000, 'Sales', 'UK'),
('Shang chi', 30, 54000, 'IT', 'China'),
('David Brown', 29, 48000, 'Marketing', 'UK'),
('Sara Ahmed', 32, 51000, 'HR', 'UAE'),
('Ravi Kumar', 27, 42000, 'IT', 'India'),
('Lucas Silva', 36, 68000, 'Finance', 'India'),
('Emma Wilson', 31, 59000, 'Marketing', 'Canada'),
('Arjun Patel', 26, 41000, 'IT', 'India'),
('Olivia Davis', 38, 75000, 'Management', 'USA'),
('Noah Martin', 33, 56000, 'Sales', 'France'),
('Sophia Lee', 24, 37000, 'IT', 'USA'),
('Mike', 40, 71000, 'Management', 'UK'),
('Isabella Rossi', 29, 53000, 'HR', 'Italy'),
('Ethan Clark', 35, 64000, 'Finance', 'Australia'),
('Ananya Gupta', 23, 36000, 'Marketing', 'India'),
('Daniel Garcia', 37, 69000, 'Sales', 'Spain'),
('Yuki Tanaka', 28, 47000, 'IT', 'Japan');

SELECT * FROM employees;

SELECT name, age,
   CASE country
   WHEN 'USA' THEN 'United States'
   WHEN 'UK'  THEN 'United Kingdom'
   WHEN 'India' THEN 'India'
   ELSE 'Country Not Found'
   END AS country_name
   FROM employees;


SELECT name, age, salary,
   CASE 
   WHEN salary < 45000 THEN 'Low'
   WHEN salary BETWEEN 45000 AND 70000  THEN 'Medium'
   ELSE 'High'
   END AS salary_level
   FROM employees;


SELECT name, country
FROM employees
ORDER BY 
       CASE country
       WHEN 'India' THEN 2
       WHEN 'USA' THEN 1
       WHEN 'UK'  THEN 3
       ELSE 4
	END;
    



SELECT 
    COUNT(CASE WHEN department = 'IT' THEN 1 END) AS It_emp,
	COUNT(CASE WHEN department = 'HR' THEN 1 END) AS HR_emp,
	COUNT(CASE WHEN department = 'FINANCE' THEN 1 END) AS Fin_emp
FROM employees;


SELECT name, age,
   CASE 
      WHEN age < 30 THEN 'Young'
      WHEN age BETWEEN 30 AND 40 THEN 'ADULT'
      ELSE 'Senior'
      END AS age_group
FROM employees;


SELECT name, age, country,
   CASE country
   WHEN 'India' THEN 'Local'
   ELSE 'Foreign'
   END AS locality
FROM employees;


SELECT name, department,
  CASE department
       WHEN 'IT' THEN '10%'
       WHEN 'HR' THEN '8%'
       ELSE '5%'
       END AS bonus
FROM employees;


SELECT 
COUNT(CASE WHEN SALARY > 60000 THEN 1 END) AS High_salary
FROM employees;


SELECT department,
     COUNT(CASE WHEN salary > 60000 THEN 1 END) AS high_sal,
     COUNT(CASE WHEN salary BETWEEN 40000 AND 60000 THEN 1 END) AS medium_sal,
     COUNT(CASE WHEN salary < 40000 THEN 1 END) AS low_sal
FROM employees
GROUP BY department;


SELECT 
     SUM(CASE WHEN country = 'India' THEN salary END ) AS india_sal
FROM employees;


   

