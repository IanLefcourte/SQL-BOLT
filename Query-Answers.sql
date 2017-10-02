-- CH1 - Select Queries 101

-- Exercise 1 — Tasks
Find the title of each film
Find the director of each film
Find the title and director of each film
Find the title and year of each film
Find all the information about each film
SELECT title
FROM movie
WHERE director = "Steven Spielberg";

-- Q2 Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order.
SELECT distinct year
FROM movie, rating using(mid)
WHERE rating.stars > 3
ORDER BY year asc;
