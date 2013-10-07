CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR NOT NULL UNIQUE,
    img_url VARCHAR DEFAULT 'funnyface.png',
    is_active BOOLEAN DEFAULT true,
    bio TEXT DEFAULT 'more to come'
);

