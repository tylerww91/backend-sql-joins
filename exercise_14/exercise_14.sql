-- the average film length by category
-- include the category name and avg length
SELECT
	category.name, AVG(film.length)
FROM
	film_category
    LEFT JOIN film on film.film_id = film_category.film_id
    LEFT JOIN category on category.category_id = film_category.category_id
GROUP BY
	category.name;