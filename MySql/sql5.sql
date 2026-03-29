CREATE TABLE cart(
id INT auto_increment PRIMARY KEY,
item_name VARCHAR(30),
item_price INT,
item_qty INT
);

INSERT INTO cart (item_name, item_price, item_qty)
VALUES 
('phone', 300, 2),
('Laptop', 900, 1),
('Tab', 500, 3);

SELECT * FROM cart;
SELECT item_name, item_price, item_qty, item_price*item_qty AS total_price_per_item FROM  cart;

SELECT SUM(item_price*item_qty) AS total_price FROM cart;

ALTER TABLE cart
ADD discount INT;

ALTER TABLE cart
DROP column discount;

ALTER TABLE cart
DROP discount;

DESCRIBE cart;
ALTER TABLE cart
MODIFY COLUMN item_qty VARCHAR(30);

-- change column name

SELECT * FROM people;
ALTER TABLE people
CHANGE city country VARCHAR(30);

ALTER TABLE people
CHANGE country  city VARCHAR(30);

ALTER TABLE people
RENAME TO students;

SELECT * FROM students;

CREATE TABLE people(id INT, name VARCHAR(30), age INT, country VARCHAR(30));
DESCRIBE people;

ALTER TABLE people
MODIFY COLUMN name VARCHAR(30) NOT NULL;

 ALTER TABLE people
 ADD PRIMARY KEY (id);
