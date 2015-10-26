CREATE TABLE users
(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100),
  age INTEGER,
  gender VARCHAR(10)
);

INSERT INTO users (name, age, gender) VALUES ('sam',12,'m');
INSERT INTO users (name, age, gender) VALUES ('jack',13,'m');
INSERT INTO users (name, age, gender) VALUES ('mary',14,'f');
INSERT INTO users (name, age, gender) VALUES ('jane',15,'f');

SELECT * FROM users;