CREATE TABLE new.netflix_titles (show_id text, type text, title text, director text, cast text, country text, date_added text, release_year int, rating text, duration text, listed_in text, description text)	OK	0.000 sec



--   1. Count the number of Movies vs TV Shows -----



select count(*) as count, type from netflix_titles where type in('Movie','TV Show') group by type;
