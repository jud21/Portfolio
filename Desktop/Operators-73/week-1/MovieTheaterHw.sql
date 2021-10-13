CREATE TABLE customer(
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  points NUMERIC(8,2)
);

CREATE TABLE tickets(
  ticket_id SERIAL PRIMARY KEY,
  price NUMERIC(4,2),
  sale_date DATE,
  customer_id INTEGER NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE movies(
  movie_id SERIAL PRIMARY KEY,
  movie_name VARCHAR(200)
);

CREATE TABLE concessions(
  item_id SERIAL PRIMARY KEY,
  item_name VARCHAR(100),
  price NUMERIC(4,2),
  customer_id INTEGER NOT NULL,
  movie_id INTEGER NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

INSERT INTO movies(
movie_id,
movie_name
)VALUES(
'1',
'Eagle Eye'
);

INSERT INTO movies(
movie_id,
movie_name
)VALUES(
'2',
'Halloweentown'
);

INSERT INTO movies(
movie_id,
movie_name
)VALUES(
'3',
'Superbad'
);


