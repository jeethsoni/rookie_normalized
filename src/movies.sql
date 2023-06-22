/*
Name - Jeet Soni
Description - A database that keeps record of the movies and information related to it.
Database - mySQL v8.0.33
*/

-- movies table 
CREATE TABLE IF NOT EXISTS movie(
    movie_id INT NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    description varchar(1000) NOT NULL,
    movie_year YEAR NOT NULL,
    rating DECIMAL,
    runtime decimal NOT NULL,
    votes INT NOT NULL,
    revenue decimal NOT NULL,
    metascore int NOT NULL,
    primary key(movie_id),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL

);

-- genre table
CREATE TABLE IF NOT EXISTS genre(
    genre_id INT NOT NULL AUTO_INCREMENT,
    name varchar(75) NOT NULL,
    primary key(genre_id),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL

);

-- actor table 
CREATE TABLE IF NOT EXISTS actor(
    actor_id INT NOT NULL AUTO_INCREMENT,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    gender varchar(25) NOT NULL,
    age INT NOT NULL,
    primary key(actor_id),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL 

);

-- director table
CREATE TABLE IF NOT EXISTS director(
    director_id INT NOT NULL AUTO_INCREMENT,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    primary key(director_id),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL

);

-- 1 movie_id N movie_id(movie_genre)
-- 1 genre_id N genre_id(movie_genre)
CREATE TABLE IF NOT EXISTS movie_genre(
    movie_id INT NOT NULL,
    genre_id INT NOT NULL,
    primary key(movie_id, genre_id),
    FOREIGN KEY movie_id REFERENCES movie_id(movie),
    FOREIGN KEY genre_id REFERENCES genre_id(genre),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- 1 movie_id N movie_id(movie_actor)
-- 1 actor_id N actor_id(movie_actor)
CREATE TABLE IF NOT EXISTS movie_actor(
    movie_id INT NOT NULL,
    actor_id INT NOT NULL,
    FOREIGN KEY movie_id REFERENCES movie_id(movie),
    FOREIGN KEY actor_id REFERENCES actor_id(actor),
    primary key(movie_id, genre_id),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- 1 movie_id N movie_id(movie_director)
-- 1 actor_id N director_id(movie_director)
CREATE TABLE IF NOT EXISTS movie_director(
    movie_id INT NOT NULL,
    director_id INT NOT NULL,
    primary key(movie_id, director_id),
    FOREIGN KEY movie_id REFERENCES movie_id(movie),
    FOREIGN KEY director_id REFERENCES director_id(director),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
);