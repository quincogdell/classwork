CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  wishlist_id INTEGER
);

CREATE TABLE wishlists (
  ID SERIAL PRIMARY KEY,
  name VARCHAR,
  description TEXT
);

INSERT INTO wishlists  (name, description) VALUES ('xmas list', 'stuff for xmas');

INSERT INTO items (name, wishlist_id) VALUES ('banana republic gift card', 1);
INSERT INTO items (name, wishlist_id) VALUES ('roomba', 1);
