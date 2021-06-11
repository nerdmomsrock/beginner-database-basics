CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name TEXT,
  age INTEGER,
  height DECIMAL,
  city TEXT,
  favorite_color TEXT
  
  );

  INSERT INTO person
  (name, age, height, city, favorite_color)
  VALUES
  ('Ryan', 40, 157.48, 'Buffalo', 'black'),
	('Jay', 45, 182.88, 'Williamsville', 'green'),
   ('Josie', 42, 167.64, 'Leesburg', 'grey'),
   ('Chad', 42, 165.1, 'Leesburg', 'red'),
  ('Dylan', 38, 172.72, 'Ashburn', 'blue'),
  ('Betsy', 41, 162.56, 'Tampa', 'purple');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 AND age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');


CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name TEXT,
  product_price DECIMAL,
  quantity INTEGER
  );

  INSERT INTO orders 
(person_id, product_name, product_price, quantity)
VALUES
(1, 'hemorrhoid cream', 2.39, 53),
(1, 'yogurt', 0.59, 3),
(1, 'skateboard', 82.01, 13),
(2, 'hair gel', 5.99, 2),
(2, 'leg tanner', 12.75, 97);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price) FROM orders;

SELECT SUM(product_price) FROM orders
WHERE person_id = 1;

INSERT INTO artist
(name)
VALUES
('Pitbull'),
('Shakira'),
('The Wiggles');

SELECT * 
FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT *
FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT *
FROM artist
WHERE name LIKE 'Black%';

SELECT *
FROM artist
WHERE name LIKE '%Black%';

SELECT * FROM invoice
COUNT(invoice_id)
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;



