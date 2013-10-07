-- this creates a kittens table
CREATE TABLE kittens (
  -- these are the kitten attributes
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  age INTEGER DEFAULT 0,
  is_cute BOOLEAN DEFAULT true
);


INSERT INTO kittens (name, age, is_cute) VALUES (5, false);
INSERT INTO kittens (name) VALUES ('sunshine');
INSERT INTO kittens (name, age, is_cute) VALUES ('pippen', 7, false);
INSERT INTO kittens (name, age, is_cute) VALUES ('MERRY', 5, false);
