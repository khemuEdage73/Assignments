show databases;

use social_db;

SHOW TABLES;
-- BETWEEN
SELECT * FROM employees
WHERE age BETWEEN 25 AND 30;

SELECT * FROM employees
WHERE salary BETWEEN 35000 AND 45000;


-- LIKE  -search patterns in string data

SELECT * FROM employees;

SELECT * FROM employees
WHERE name = 'Mike';

SELECT * FROM employees
WHERE name LIKE 'J%';

-- wildcard in LIKE
-- % -> 0 or more chars

SELECT * FROM employees
WHERE name LIKE '%a';

SELECT * FROM employees
WHERE name LIKE '%o%';

-- _ underscore represents exactly a char

SELECT * FROM employees
WHERE name LIKE 'P____';


-- IN allows us to check if value present or not;
SELECT * FROM people;

SELECT * FROM people
WHERE name IN('John', 'Jake','Mike');

SELECT * FROM people
WHERE age IN(25,28,29);

SELECT * FROM people
WHERE age NOT IN(25,28,29);

SELECT * FROM people
WHERE city = NULL;

SELECT * FROM people
WHERE city IS NULL;

SELECT * FROM people
WHERE city IS NOT NULL;

SELECT * FROM people
WHERE city IS NULL AND age < 30;

-- String functions

-- CONCAT()
SELECT CONCAT('Hello', ' ' 'world') AS CONCAT;

SELECT CONCAT(name,'_' ,age, '_',city) AS username FROM people;

-- CONCAT() with separator

SELECT CONCAT_WS('_', name, age, city) AS username FROM people;

-- Substring 
-- Programming -> "PRO", "GRAM", "ING"

-- SELECT SUBSTRING(string, start position, length);

SELECT SUBSTRING("Programming", 5, 3);  -- ans => ram

SELECT SUBSTRING("Programming", 1, 3); -- Pro

SELECT SUBSTRING("Programming", 9); 


-- Replace

-- SELECT REPLACE(original str, find_str, replace_str);

SELECT REPLACE("i love apple", "apple", "Mango");


-- INSTR()
-- SELECT INSTR(Org_str, substring);

SELECT INSTR("Programming", "gram");  -- 4
SELECT INSTR("i love apple", "apple");   -- 8

SELECT INSTR('Hey Mike and Mike', 'Mike');  -- 5  we will not get 2nd mike pos

-- LOCATE()

-- SELECT LOCATE(substr, str, start_pos);

SELECT LOCATE('and', 'Hey Mike and Mike', 8);


CREATE TABLE customers_2(id INT, email VARCHAR(30));

INSERT INTO customers_2
 VALUES(1, "abc@gmail.com"),
(2, "John@gmail.com"),
(3, "Mike@gmail.com"),
(4, "Snow@gmail.com");

SELECT * FROM customers_2;

SELECT LOCATE('@', email)-1 FROM customers_2;

SELECT 
SUBSTRING(email, 1, LOCATE('@', email)-1) 
AS username 
FROM customers_2;

-- LENGTH 
SELECT LENGTH("Hello");  -- length in Bytes


-- UPPER/LOWER -> converts all the string into uppercase/Lowercase

-- SELECT UPPER(string);
-- SELECT LOWER(string);

SELECT UPPER("hello"); -- HELLO

SELECT LOWER("HELLO"); -- HELLO






