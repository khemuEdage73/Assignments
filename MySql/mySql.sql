SELECT * FROM people;

SELECT * FROM people 
WHERE age = 28;


SELECT * FROM people 
WHERE city = "Mumbai";

INSERT INTO people(id, name , age) 
VALUES(7, "Harry", 25);

SELECT * FROM people 
WHERE city = NULL;

-- "US" = "us"

SELECT * FROM people 
WHERE age >= 30;

SELECT * FROM people 
WHERE name< "j";

-- date format YYYY-MM-DD

CREATE TABLE sales(
id INT PRIMARY KEY auto_increment,
amount INT,
sale_date date
);

INSERT INTO sales(amount, sale_date)
VALUES(100, "2026-01-01"),
(200, "2026-02-01"),
(300, "2026-03-03"),
(400, "2026-04-05"),
(500, "2026-05-10");

SELECT * FROM sales;

SELECT * FROM sales
WHERE sale_date = "2026-03-03";

SELECT * FROM sales
WHERE sale_date < "2026-04-05";

SELECT * FROM sales
WHERE sale_date > "2026-04-05";

SELECT * FROM sales
WHERE sale_date <> "2026-01-01";

-- without quotes --> NULL

SELECT * FROM sales
WHERE sale_date = 2026-03-03;

-- DATETIME

CREATE TABLE sales2(sales_date DATE, sales_time DATETIME);

INSERT INTO sales2 VALUES("2026-03-04", "2026-03-04");

SELECT * FROM sales2;

SELECT * FROM sales2
WHERE sales_date = "2026-03-04";

SELECT * FROM sales2
WHERE sales_time = "2026-03-04";

SELECT * FROM people
WHERE age > 25 AND city = "Mumbai";

SELECT * FROM people
WHERE age > 25 OR city = "Mumbai";

SELECT * FROM people
WHERE NOT age = 29;

SELECT * FROM people
WHERE age < 30 XOR city = "Mumbai";


SELECT * FROM people
WHERE age > 30
	 AND (city = "Mumbai" OR city = "Delhi");





