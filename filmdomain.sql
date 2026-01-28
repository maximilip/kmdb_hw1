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
  first_name TEXT,
  last_name TEXT
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
-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output goes here.
SELECT * FROM movies;   

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