CREATE TABLE puppies (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  age INTEGER,
  is_cute BOOLEAN
);


INSERT INTO puppies (name, age, is_cute) VALUES ('doug', 5, true);
INSERT INTO puppies (name, age, is_cute) VALUES ('gary', 5, true);
INSERT INTO puppies (name, age, is_cute) VALUES ('susan', 5, false);
INSERT INTO puppies (name, age, is_cute) VALUES ('munchkin', 4, false);
INSERT INTO puppies (name, age, is_cute) VALUES ('munchkin 2', 4, true);
INSERT INTO puppies (name, age, is_cute) VALUES ('munchkin 3', 2, true);
INSERT INTO puppies (name, age, is_cute) VALUES ('munchkin 4', 1, true);
INSERT INTO puppies (name, age, is_cute) VALUES ('toby', 0, true);
INSERT INTO puppies (name, age, is_cute) VALUES ('joey', 45, true);