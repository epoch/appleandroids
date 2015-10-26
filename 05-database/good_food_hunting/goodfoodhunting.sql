CREATE DATABASE goodfoodhunting;

CREATE TABLE dishes
(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  image_url VARCHAR(100) 
);

INSERT INTO dishes (name, image_url) VALUES ('Grilled lady','http://s3.amazonaws.com/foodspotting-ec2/reviews/5622826/thumb_275.jpg?1445753652');

INSERT INTO dishes (name, image_url) VALUES ('dumplings','http://s3.amazonaws.com/foodspotting-ec2/reviews/1270161/thumb_275.jpg?1327975061');