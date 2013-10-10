DROP TABLE users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  food VARCHAR,
  github VARCHAR
);
