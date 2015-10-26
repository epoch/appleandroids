CREATE DATABASE ga;

\c ga

CREATE TABLE students
(
  id SERIAL4 PRIMARY KEY,
  firstname VARCHAR(100),
  lastname VARCHAR(100),
  dob DATE,
  gpa FLOAT8
);

INSERT INTO students (firstname, lastname, dob, gpa) VALUES ('bill','jones','1/1/1900',3.3);
INSERT INTO students (firstname, lastname, dob, gpa) VALUES ('janel','jones','1/3/1900',3.1);
INSERT INTO students (firstname, lastname, dob, gpa) VALUES ('jim','smith','1/1/1900',1.2);
INSERT INTO students (firstname, lastname, dob, gpa) VALUES ('jim','perry','2/5/1900',4.0);
