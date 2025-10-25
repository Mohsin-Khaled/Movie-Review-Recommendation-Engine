-- Query 1: Top-rated movies
SELECT m.title, AVG(r.rating) AS avg_rating
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.title
ORDER BY avg_rating DESC
LIMIT 5;

-- Query 2: Most active reviewers
SELECT u.name, COUNT(rv.review_id) AS total_reviews
FROM reviews rv
JOIN users u ON rv.user_id = u.user_id
GROUP BY u.name
ORDER BY total_reviews DESC;

-- Query 3: Average rating by genre
SELECT m.genre, ROUND(AVG(r.rating), 2) AS avg_genre_rating
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.genre
ORDER BY avg_genre_rating DESC;

-- View: Top-rated movies
CREATE VIEW top_rated_movies AS
SELECT m.title, ROUND(AVG(r.rating), 2) AS avg_rating
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.title
ORDER BY avg_rating DESC
LIMIT 5;


-- View: Most Active Reviewers
CREATE VIEW most_active_reviewers AS
SELECT u.name, COUNT(rv.review_id) AS total_reviews
FROM reviews rv
JOIN users u ON rv.user_id = u.user_id
GROUP BY u.name
ORDER BY total_reviews DESC;

CREATE VIEW avg_rating_by_genre AS
SELECT m.genre, ROUND(AVG(r.rating), 2) AS avg_genre_rating
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.genre
ORDER BY avg_genre_rating DESC;