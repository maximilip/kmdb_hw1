-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS performances;
DROP TABLE IF EXISTS agents;

-- Create new tables, according to your domain model

CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  year INTEGER,
  rating TEXT,
  studio TEXT
);

CREATE TABLE actors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE performances (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  role TEXT,
  movie_id INTEGER,
  actor_id INTEGER
);

CREATE TABLE agents (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
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

INSERT INTO actors (
  name
)
VALUES (
    "Christian Bale"
);INSERT INTO actors (
  name
)
VALUES (
    "Michael Caine"
);

INSERT INTO actors (
  name
)
VALUES (
    "Liam Neeson"
);
INSERT INTO actors (
  name
)
VALUES (
    "Katie Holmes"
);

INSERT INTO actors (
  name
)
VALUES (
    "Gary Oldman"
);

INSERT INTO actors (
  name
)
VALUES (
    "Heath Ledger"
);

INSERT INTO actors (
  name
)
VALUES (
    "Aaron Eckhart"
);

INSERT INTO actors (
  name
)
VALUES (
    "Maggie Gyllenhaal"
);

INSERT INTO actors (
  name
)
VALUES (
    "Tom Hardy"
);

INSERT INTO actors (
  name
)
VALUES (
    "Joseph Gordon-Levitt"
);

INSERT INTO actors (
  name
)
VALUES (
    "Anne Hathaway"
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "Bruce Wayne",
    1,
    1
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "Alfred",
    1,
    2
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "Ra's Al Ghul",
    1,
    3
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "Rachel Dawes",
    1,
    4
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "Commissioner Gordon",
    1,
    5
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "Bruce Wayne",
    2,
    1
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "Joker",
    2,
    6
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "Harvey Dent",
    2,
    7
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "Alfred",
    2,
    2
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "Rachel Dawes",
    2,
    8
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "Bruce Wayne",
    3,
    1
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "Commissioner Gordon",
    3,
    5
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "Bane",
    3,
    5
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "John Blake",
    3,
    10
);

INSERT INTO performances (
    role,
    movie_id,
    actor_id
)
VALUES (
    "Selina Kyle",
    3,
    11
);

INSERT INTO agents (
    name
)
VALUES (
    "Max Prasad"
);
-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output goes here.
SELECT title, year, rating, studio FROM movies;   

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""

-- The SQL statement for the cast output goes here.

SELECT title, name, role FROM performances
    INNER JOIN movies ON movies.id = performances.movie_id
    INNER JOIN actors ON actors.id = performances.actor_id
    ;

-- Prints a header for the agent's list of represented actors
.print ""
.print "Represented by agent"
.print "===================="
.print ""

-- The SQL statement for the represented actor(s) output goes here.

-- Example output:
-- Represented by agent
-- ====================
-- Christian Bale