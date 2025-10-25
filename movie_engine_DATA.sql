DROP TABLE IF EXISTS Users , Movies, Ratings, Reviews CASCADE; 
CREATE TABLE Users(
user_id INT PRIMARY KEY,
name VARCHAR(100),
age INT,
location VARCHAR(100)
);

CREATE TABLE Movies(
movie_id INT PRIMARY KEY,
title VARCHAR(100),
genre VARCHAR(100),
release_Year INT
);

CREATE TABLE Ratings (
rating_id INT PRIMARY KEY,
user_id INT,
movie_id INT,
rating INT CHECK (rating BETWEEN 1 AND 10),
rating_date DATE,
FOREIGN KEY (user_id) REFERENCES Users(user_id),
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

CREATE TABLE Reviews(
review_id INT PRIMARY KEY,
user_id INT,
movie_id INT,
review_text TEXT,
review_date DATE,
FOREIGN KEY (user_id) REFERENCES Users(user_id),
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

INSERT INTO Users(user_id, name, age, location)
VALUES (1, 'Walt', 40, 'california'),
       (2, 'Skylar', 30, 'Chicago'),
	   (3, 'Ahmed', 20, 'Hyderabad'),
	   (4, 'Salman', 21, 'Mumbai'),
	   (5, 'Sana', 19, 'Bangalore');

INSERT INTO Movies(movie_id, title, genre, release_year)
VALUES (101, 'Game of Thrones', 'Drama', 2011),
       (102, 'Anacondas:The Blood Orchid', 'Adventure', 2004),
	   (103, 'Deep Blue Sea', 'Thriller', 2000),
	   (104, 'Avengers', 'Action', 2012),
	   (105, 'Avengers: Infinity War', 'Superhero', 2016),
	   (106, 'Spiderman', 'Action', 2008),
	   (107, 'Superman', 'Superhero', 2010),
	   (108, 'Conjuring', 'Horror', 2013),
	   (109, 'Hera Pheri', 'Comedy', 2009),
	   (110, 'The Karate Kid', 'Action', 2011);

INSERT INTO Ratings(rating_id, user_id, movie_id, rating, rating_date)
VALUES (1, 1, 101, 9.8, '2011-07-11'),
       (2, 2, 105, 9.9, '2016-03-1'),
	   (3, 3, 107, 8.5, '2010-07-30'),
	   (4, 4, 104, 9.2, '2012-07-16'),
	   (5, 5, 102, 9.0, '2004-03-12'),
	   (6, 5, 107, 7.8, '2010-07-29'),
	   (7, 4, 101, 9.8, '2011-07-13'),
	   (8, 4, 108, 9.4, '2013-05-05'),
	   (9, 3, 106, 9.1, '2008-06-16'),
	   (10, 1, 102, 9.8, '2004-03-11'),
	   (11, 1, 109, 8.4, '2009-09-19'),
	   (12, 2, 110, 9.6, '2011-08-21'),
	   (13, 3, 105, 9.7, '2016-03-10'),
	   (14, 5, 104, 8.9, '2012-07-11'),
	   (15, 3, 103, 9.7, '2000-03-20'),
	   (16, 4, 106, 9.2, '2008-06-18'),
	   (17, 1, 104, 9.3, '2012-07-21'),
	   (18, 1, 108, 9.4, '2013-05-09'),
	   (19, 5, 103, 9.5, '2000-03-11'),
	   (20, 2, 110, 9.0, '2011-08-26');

INSERT INTO Reviews (review_id, user_id, movie_id, review_text, review_date)
VALUES
  (1, 1, 101, 'Epic fantasy with unforgettable characters.', '2011-07-12'),
  (2, 2, 105, 'Mind-blowing visuals and emotional depth.', '2016-03-02'),
  (3, 3, 107, 'Classic superhero nostalgia.', '2010-07-31'),
  (4, 4, 104, 'Action-packed and thrilling.', '2012-07-17'),
  (5, 5, 102, 'Jungle adventure with intense moments.', '2004-03-13'),
  (6, 1, 108, 'Terrifying and well-crafted horror.', '2013-05-06'),
  (7, 2, 106, 'Great reboot with solid action.', '2008-06-17'),
  (8, 3, 109, 'Comedy gold, never gets old.', '2009-09-20'),
  (9, 4, 110, 'Inspiring and well-acted.', '2011-08-22'),
  (10, 5, 103, 'Shark thriller with smart twists.', '2000-03-21');
