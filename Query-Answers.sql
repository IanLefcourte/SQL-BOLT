-- CH1 - Select Queries 101

-- Find the title of each film
SELECT Title
FROM Movies;

-- Find the director of each film
SELECT Director
FROM Movies;

-- Find the title and director of each film
SELECT Title, Director
FROM Movies;

-- Find the title and year of each film
SELECT Title, Director
FROM Movies;

-- Find all the information about each film
SELECT *
FROM Movies;

-- CH2 - Queries with constraints (Pt. 1)

-- Find the movie with a row id of 6
SELECT *
FROM Movies
WHERE Id = 6;

-- Find the movies released in the years between 2000 and 2010
SELECT *
FROM Movies
WHERE Year BETWEEN 2000 AND 2010;

-- Find the movies not released in the years between 2000 and 2010
SELECT *
FROM Movies
WHERE Year NOT BETWEEN 2000 AND 2010;

-- Find the first 5 Pixar movies and their release  year
SELECT *
FROM Movies
WHERE Id BETWEEN 1 AND 5;

-- CH3 - Queries with constraints (Pt. 2)

-- Find all the Toy Story movies
SELECT *
FROM Movies
WHERE Title LIKE "%Toy Story%";

-- Find all the movies directed by John Lasseter
SELECT *
FROM Movies
WHERE Director = "John Lasseter";

-- Find all the movies (and director) not directed by John Lasseter
SELECT *
FROM Movies
WHERE Director != "John Lasseter";

-- Find all the WALL-* movies
SELECT *
FROM Movies
WHERE Title LIKE "%WALL%";
