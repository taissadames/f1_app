CREATE DATABASE f1_app;

CREATE TABLE cars(
    id SERIAL PRIMARY KEY,
    name TEXT,
    image_url TEXT,
    owner TEXT 
    
);

INSERT INTO cars(name, image_url, owner)
VALUES('Mercedes', 'https://images.unsplash.com/photo-1532906619279-a4b7267faa66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80', 'a');

INSERT INTO cars(name, image_url, owner)
VALUES('Ferrari', 'https://images.unsplash.com/photo-1508175911810-a4817cd3d7b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80', 'c');

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

ALTER TABLE users ADD COLUMN password_digest TEXT;

