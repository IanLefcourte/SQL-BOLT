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

-- CH4 - Filtering and sorting Query results

-- List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT Director
FROM Movies
ORDER BY Director;

-- List the last four Pixar movies released (ordered from most recent to least)
SELECT *
FROM Movies
ORDER BY Year DESC
LIMIT 4;

-- List the first five Pixar movies sorted alphabetically
SELECT *
FROM Movies
ORDER BY Title ASC
LIMIT 5;

-- List the next five Pixar movies sorted alphabetically
SELECT *
FROM Movies
ORDER BY Title ASC
LIMIT 5
OFFSET 5;

-- CH5 - Review Simple SELECT Queries

-- List all the Canadian cities and their populations 
SELECT *
FROM North_american_cities
WHERE Country LIKE "Canada";

-- Order all the cities in the United States by their latitude from north to south
SELECT *
FROM North_american_cities
WHERE Country = "United States"
ORDER BY Latitude DESC;

-- List all the cities west of Chicago, ordered from west to east
SELECT *
FROM North_american_cities
WHERE Longitude < -87.69
ORDER BY Longitude ASC;

-- List the two largest cities in Mexico (by population)
SELECT *
FROM North_american_cities
WHERE Country LIKE "Mexico"
ORDER BY Population DESC
LIMIT 2;

-- List the third and fourth largest cities (by population) in the United States and their population
SELECT *
FROM North_american_cities
WHERE Country LIKE "United States"
ORDER BY Population DESC
LIMIT 2
OFFSET 2;

-- CH6 - Review Simple SELECT Queries

-- Find the domestic and international sales for each movie
SELECT Title, International_sales, Domestic_sales
FROM Movies JOIN Boxoffice
ON Id=Movie_id;

-- Show the sales numbers for each movie that did better internationally rather than domestically
SELECT Title, International_sales, Domestic_sales
FROM Movies JOIN Boxoffice
ON Id=Movie_id
WHERE International_sales > Domestic_sales;

-- List all the movies by their ratings in descending order
SELECT Title, Rating
FROM Movies JOIN Boxoffice
ON Id=Movie_id
ORDER BY Rating Desc;
