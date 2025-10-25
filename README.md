# Movie Review and Recommendation Engine

## Project Overview  
This SQL-based engine analyzes movie reviews and generates personalized recommendations using PostgreSQL and pgAdmin. It shows schema design, analytical queries, views, and window functions.

## Tools Used
- PostgreSQL
- pgAdmin
- SQL (DDL, DML, Views, Window Functions)

## Schema
- `users`: Stores user information
- `movies`: Stores movie details
- `ratings`: Stores user ratings
- `reviews`: Stores written reviews

## Key Views with Queries and Output Screenshots
- `top_rated_movies`: Top 5 movies by average rating

```sql
CREATE VIEW top_rated_movies AS
SELECT m.title, ROUND(AVG(r.rating), 2) AS avg_rating
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.title
ORDER BY avg_rating DESC
LIMIT 5;
```
<img src= "https://github.com/user-attachments/assets/d84d0112-8c90-4ca4-8749-d1a5410896c3" width="25%" />

- `avg_rating_by_genre`: Average rating per genre

```sql
CREATE VIEW avg_rating_by_genre AS
SELECT m.genre, ROUND(AVG(r.rating), 2) AS avg_genre_rating
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.genre
ORDER BY avg_genre_rating DESC;
```
<img src= "https://github.com/user-attachments/assets/2dce961e-65a2-400f-88c3-254a70d4c3ec" width="25%" />

- `most_active_reviewers`: Users with the most reviews

```sql
CREATE VIEW most_active_reviewers AS
SELECT u.name, COUNT(rv.review_id) AS total_reviews
FROM reviews rv
JOIN users u ON rv.user_id = u.user_id
GROUP BY u.name
ORDER BY total_reviews DESC;
```
<img src= "https://github.com/user-attachments/assets/38969dda-cb59-4fa0-809b-422d1490d6b2" width="25%" />

## Window Functions
- `RANK()`: Ranks movies within each genre
- `ROW_NUMBER()`: Provides a unique row number per genre
- `NTILE(4)`: Segments movie ratings into quartiles

## Exported Reports
- `top_rated_movies.csv`
- `avg_rating_by_genre.csv`
- `most_active_reviewers.csv`

## Outcome  
A modular, reusable SQL engine that is ready for use in dashboards or for further development.


✅ ** Completed Project: Movie Review And Recommendation Engine **
