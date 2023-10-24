USE sakila;

SELECT * FROM store;
-- Question 1 Display all available tables in the Sakila database.
SHOW TABLES;

-- Question 2 Retrieve all the data from the tables actor, film and customer

SELECT *
FROM actor, film, customer;

-- Question 3 Retrieve the following columns from their respective tables:
      -- Titles of all films from the film table
      -- List of languages used in films, with the column aliased as language from the language table
      -- List of first names of all employees from the staff table

SELECT title
FROM film;

SELECT name language
FROM language;

SELECT first_name
From staff;

-- Question 4 Retrieve unique release years.
SELECT DISTINCT release_year
FROM film;

-- Question 5.1 Determine the number of stores that the company has.
SELECT * FROM store;

SELECT count(*)
FROM store;

-- Question 5.2 Determine the number of employees that the company has.

SELECT COUNT(*)
FROM staff;

-- Question 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(DISTINCT inventory_id)
FROM rental
WHERE return_date IS NULL;

SELECT COUNT(DISTINCT inventory_id)
FROM rental
WHERE return_date IS NOT NULL;

SELECT COUNT(DISTINCT film_id)
FROM film;

-- Question 5.4 Determine the number of distinct last names of the actors in the database.

SELECT COUNT(DISTINCT actor.last_name)
FROM actor ;

-- Question 6 Retrieve the 10 longest films.

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- Question 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT first_name
FROM actor
WHERE first_name = "SCARLETT";