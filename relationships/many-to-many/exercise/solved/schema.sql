/*
  1. Create a 'customers' table with the fields:
    * id
    * name
    * address
    * email
  2. Create a 'products' table with the fields:
    * name
    * category
    * price
    * CustomerId
  (We might have created both of these tables already)

  3. Do a many to many association between these tables
  4. Get all of the products that one customer has bought
  5. Get all of the customers that have bought one product

*/
CREATE TABLE customers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255),
  address VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE products (
  name VARCHAR(255),
  category VARCHAR(255),
  price DOUBLE,
  CustomerId INT NOT NULL,
  FOREIGN KEY (CustomerId) REFERENCES customers(id)
);

INSERT INTO customers (name, address, email) VALUES ('Bob', 'Nowhere', 'bob@bob.com');
INSERT INTO customers (name, address, email) VALUES ('Jane', 'Somewhere', 'jane@jane.com');
INSERT INTO customers (name, address, email) VALUES ('Joan', 'Everywhere', 'joan@joan.com');

/* This here is saying that Bob bought wireless headphones, because Bob is id 1 because he was created first */
INSERT INTO products (name, category, price, CustomerId) VALUES ('wireless headphones', 'tech', 150, 1);
INSERT INTO products (name, category, price, CustomerId) VALUES ('Yeti', 'drink', 100, 3);
INSERT INTO products (name, category, price, CustomerId) VALUES ('dumbbells', 'exercise', 150, 2);
INSERT INTO products (name, category, price, CustomerId) VALUES ('dumbbells', 'exercise', 150, 3);
INSERT INTO products (name, category, price, CustomerId) VALUES ('turntable', 'music', 125, 1);

/* Getting all of the products that Bob has bought */
SELECT customers.name, products.name
FROM customers
INNER JOIN products
ON customers.id=products.CustomerId
WHERE customers.name='Bob';

/* Getting all of the customers that have bought dumbbells */
SELECT customers.name, products.name
FROM customers
INNER JOIN products
ON customers.id=products.CustomerId
WHERE products.name='dumbbells';
