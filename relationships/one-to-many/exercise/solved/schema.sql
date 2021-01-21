/*

  1. Create a 'people' table with the fields:
    * name
    * age
    * gender
  2. Do inserts into the 'people' table
  3. Create a 'family' table with the fields:
    * last name
    * people_id
  4. Do a one-to-many association between the family table and the people table
     A family is associated with many people
     A person is associated with 1 family

*/
CREATE TABLE people (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255),
  age INT,
  gender VARCHAR(255)
);

INSERT INTO people (name, age, gender) VALUES ('BOB', 22, 'Male');
INSERT INTO people (name, age, gender) VALUES ('JOAN', 21, 'Female');
INSERT INTO people (name, age, gender) VALUES ('JANE', 25, 'Female');

CREATE TABLE family (
  last_name VARCHAR(255),
  people_id INT NOT NULL UNIQUE,
  FOREIGN KEY (people_id) REFERENCES people(id)
);

INSERT INTO family (last_name, people_id) VALUES ('Saget', 1);
INSERT INTO family (last_name, people_id) VALUES ('Saget', 2);
INSERT INTO family (last_name, people_id) VALUES ('Miller', 3);
