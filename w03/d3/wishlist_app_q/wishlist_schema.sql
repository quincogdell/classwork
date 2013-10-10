CREATE TABLE wishlists (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  description TEXT
);

CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  wishlist_id INTEGER
);
