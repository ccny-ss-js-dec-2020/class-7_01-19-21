/*

1. Create a 'performers' table that has:
  * an id field
  * a field for the name of an actor or actress
  * other information about an actor or actress (age, bio)
2. Create a 'moviesTwo' table (because we already created a 'movies' table) that has:
  * an id field
  * movie name field
  * has a foreign key of the performers id
3. Practice with constraints on fields
4. Do some inserts into both table.
  * Do some successful inserts
  * Do some inserts that are rejected as well

*/

CREATE TABLE performers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) UNIQUE NOT NULL,
  age INT
);

CREATE TABLE moviesTwo (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  PerformerId INT NOT NULL,
  FOREIGN KEY (PerformerId) REFERENCES performers(id)
);

INSERT INTO performers (name, age) VALUES ('Nicolas Cage', 55);
INSERT INTO performers (name, age) VALUES ('John Malkovich', 60);

INSERT INTO moviesTwo (name, PerformerId) VALUES ('Con Air', 1);
INSERT INTO moviesTwo (name, PerformerId) VALUES ('Con Air', 2);
INSERT INTO moviesTwo (name, PerformerId) VALUES ('Leaving Las Vegas', 1);
INSERT INTO moviesTwo (name, PerformerId) VALUES ('Rounders', 2);

SELECT * FROM moviesTwo WHERE name = 'Con Air';
