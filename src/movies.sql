CREATE TABLE IF NOT EXISTS movies(
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

CREATE TABLE IF NOT EXISTS genre(
    genre_id INT NOT NULL AUTO_INCREMENT,
    name varchar(75) NOT NULL,
    primary key(genre_id),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL

);

CREATE TABLE IF NOT EXISTS actor(
    actor_id INT NOT NULL AUTO_INCREMENT,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    gender varchar(25) NOT NULL,
    age INT NOT NULL,
    primary key(actor_id),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL 

);

CREATE TABLE IF NOT EXISTS director(
    director_id INT NOT NULL AUTO_INCREMENT,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    primary key(director_id),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL

);

CREATE TABLE IF NOT EXISTS movie_genre(
    movie_id INT NOT NULL,
    genre_id INT NOT NULL,
    primary key(movie_id, genre_id),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS movie_actor(
    movie_id INT NOT NULL,
    genre_id INT NOT NULL,
    primary key(movie_id, genre_id),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS movie_director(
    movie_id INT NOT NULL,
    director_id INT NOT NULL,
    primary key(movie_id, director_id),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
);