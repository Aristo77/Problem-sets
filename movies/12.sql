-- write a SQL query to list the titles of all movies in which both Johnny Depp and Helena Bonham Carter starred

-- Write a query to find all movies which JD has started
-- Write a query to find all movies which HBC has started
-- take intersection

SELECT title
FROM people JOIN stars ON stars.person_id = people.id JOIN movies ON movies.id = stars.movie_id
WHERE name = "Johnny Depp"
INTERSECT

SELECT title
FROM people JOIN stars ON stars.person_id = people.id JOIN movies ON movies.id = stars.movie_id
WHERE name = "Helena Bonham Carter"
