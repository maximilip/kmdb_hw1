-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS agents;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS performances;

-- Create new tables, according to your domain model
CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  year INTEGER,
  rating TEXT,
  studio TEXT
);

CREATE TABLE agents (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT
);

CREATE TABLE actors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  agent_id TEXT
);

CREATE TABLE performances (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  movie_id TEXT,
  actor_id TEXT
);

-- Insert data into your database that reflects the sample data shown above
INSERT INTO movies (
  title,
  year,
  rating,
  studio
)
VALUES (
    "Batman Begins",
    2005,
    "PG-13",
    "Warner Bros."
);

INSERT INTO movies (
  title,
  year,
  rating,
  studio
)
VALUES (
    "The Dark Knight",
    2008,
    "PG-13",
    "Warner Bros."
);
INSERT INTO movies (
  title,
  year,
  rating,
  studio
)
VALUES (
    "The Dark Knight Rises",
    2012,
    "PG-13",
    "Warner Bros."
);
-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output goes here.
SELECT title, year, rating, studio FROM movies;   
