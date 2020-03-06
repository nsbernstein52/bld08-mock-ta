--  server/db/schema.sql

DROP DATABASE IF EXISTS farm;

CREATE DATABASE farm;

\c farm;

CREATE TABLE types (
  id SERIAL PRIMARY KEY,
  a_type TEXT
);

CREATE TABLE locations (
  id SERIAL PRIMARY KEY,
  location_name TEXT UNIQUE DEFAULT 'barn'
);

CREATE TABLE  animals (
  id SERIAL PRIMARY KEY,
  type_id INTEGER REFERENCES types (id),
  a_name TEXT UNIQUE,
  location_id INTEGER REFERENCES locations (id),
  tagline TEXT DEFAULT 'boring'
);

INSERT INTO types (a_type) VALUES ( 'chicken');
INSERT INTO types (a_type) VALUES ( 'cow' );
INSERT INTO types (a_type) VALUES ( 'hen' );
INSERT INTO types (a_type) VALUES ( 'horse' );
INSERT INTO types (a_type) VALUES ( 'pig' );

INSERT INTO locations (location_name) VALUES ( 'barn');
INSERT INTO locations (location_name) VALUES ( 'yard');

INSERT INTO animals ( type_id, a_name, location_id, tagline )
  VALUES (1, 'Heart', 1, '5 pounder');
INSERT INTO animals ( type_id, a_name, location_id, tagline )
  VALUES (2, 'Little Red', 1, 'Not I');
INSERT INTO animals ( type_id, a_name, location_id, tagline )
  VALUES (3, 'Brown', 1, 'How now?');
INSERT INTO animals ( type_id, a_name, location_id, tagline )
  VALUES (3, 'Daisy', 1, 'Milk anyone?');
INSERT INTO animals ( type_id, a_name, location_id, tagline )
  VALUES (4, 'Mr. Ed', 1, 'No one can talk to a horse of course ...');
INSERT INTO animals ( type_id, a_name, location_id, tagline )
  VALUES (5, 'Wilbur', 1, 'Some pig!');

