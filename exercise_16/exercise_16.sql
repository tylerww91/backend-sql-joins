-- return the title, description, release year and list of actors returned as a JSON blob
-- for the movie Airplane Sierra
      SELECT film.title, film.description, film.release_year,
      coalesce(
        json_agg(to_jsonb(actor.*))
        filter (WHERE actor IS NOT NULL), '[]')
        as actors
      from film
    	LEFT JOIN film_actor on film_actor.film_id = film.film_id
    	LEFT JOIN actor on actor.actor_id = film_actor.actor_id
	  where film.title = 'Airplane Sierra'
      group by film.title, film.description, film.release_year

