/*
  Note: The students table was creating a previous lesson;

  1. Create a 'student_profile' table with the fields:
    * nickname
    * bio
    * favorite tv show
    * favorite clothing brand
    * favorite musician
  2. Do a 1 to 1 association with the 'students' table

*/
USE first_sql;
CREATE TABLE student_profile_two (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nickname VARCHAR(255) NOT NULL,
  bio TEXT NOT NULL,
  favorite_tv_show VARCHAR(255) NOT NULL,
  favorite_clothing_brand VARCHAR(255) NOT NULL,
  favorite_musician VARCHAR(255) NOT NULL
  StudentId INT NOT NULL UNIQUE,
  FOREIGN KEY (StudentId) REFERENCES students(id)
);

INSERT INTO student_profile_two (nickname, bio, favorite_tv_show, favorite_clothing_brand, favorite_musician, StudentId) VALUES ('jj', 'i like pizza and chicken', 'parks and rec', 'lucky', 'eric clapton', 1);
