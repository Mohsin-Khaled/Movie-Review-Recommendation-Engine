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

## Key Views
- `top_rated_movies`: Top 5 movies by average rating
- `avg_rating_by_genre`: Average rating per genre
- `most_active_reviewers`: Users with the most reviews

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
