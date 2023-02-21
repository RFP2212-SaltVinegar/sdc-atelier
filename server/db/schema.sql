DROP DATABASE IF EXISTS ratingsreviews;
CREATE DATABASE ratingsreviews;

\c ratingsreviews;

CREATE TABLE reviews (
  id INTEGER PRIMARY KEY NOT NULL,
  product_id INTEGER,
  rating INTEGER,
  date TEXT,
  summary TEXT,
  body TEXT,
  recommend BOOLEAN,
  reported BOOLEAN,
  name VARCHAR(50),
  email VARCHAR(100),
  response TEXT,
  helpfulness INTEGER DEFAULT 0
);

CREATE TABLE photos (
  id INTEGER PRIMARY KEY NOT NULL,
  url TEXT,
  review_id INTEGER REFERENCES reviews (id) NOT NULL
);

CREATE TABLE characteristics (
  id INTEGER PRIMARY KEY NOT NULL,
  product_id INTEGER NOT NULL,
  description VARCHAR(50)
);

CREATE TABLE characteristics_reviews (
  id INTEGER PRIMARY KEY NOT NULL,
  review_id INTEGER REFERENCES reviews (id) NOT NULL,
  characteristics_id INTEGER REFERENCES characteristics (id) NOT NULL,
  rating INTEGER
);