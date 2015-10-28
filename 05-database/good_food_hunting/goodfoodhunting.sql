CREATE DATABASE goodfoodhunting;

CREATE TABLE dishes
(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  image_url VARCHAR(100) 
);

CREATE TABLE dish_types
(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

INSERT INTO dishes (name, image_url) VALUES ('Grilled lady','http://s3.amazonaws.com/foodspotting-ec2/reviews/5622826/thumb_275.jpg?1445753652');

INSERT INTO dishes (name, image_url) VALUES ('dumplings','http://s3.amazonaws.com/foodspotting-ec2/reviews/1270161/thumb_275.jpg?1327975061');

INSERT INTO dishes (name, image_url, dish_type_id) VALUES ('burger','http://s3.amazonaws.com/foodspotting-ec2/reviews/1270161/thumb_275.jpg?1327975061',3);


INSERT INTO dish_types (name) VALUES ('dessert');
INSERT INTO dish_types (name) VALUES ('brunch');
INSERT INTO dish_types (name) VALUES ('snack');

ALTER TABLE dishes ADD dish_type_id INTEGER; 
