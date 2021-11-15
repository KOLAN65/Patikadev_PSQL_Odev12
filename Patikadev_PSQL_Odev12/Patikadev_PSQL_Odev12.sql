-- 1. Soru

SELECT COUNT(title) FROM film
WHERE length > 
(
	SELECT AVG(length) FROM film
);

-- 2. Soru

SELECT COUNT(title) FROM film
WHERE rental_rate = 
(
	SELECT MAX(rental_rate) FROM film
);

-- 3. Soru
SELECT title, rental_rate, replacement_cost FROM film
WHERE title = ANY
(
	SELECT title FROM film
	ORDER BY rental_rate DESC, replacement_cost ASC
);


-- 4. Soru

SELECT * FROM payment
ORDER BY amount DESC;
