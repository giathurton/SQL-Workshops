CREATE DATABASE movie;

USE movie;

CREATE TABLE movies(
movie_id INT AUTO_INCREMENT PRIMARY KEY,
title varchar(200),
release_date datetime,
plot_description varchar(4000)
);

CREATE TABLE actors(
actor_id INT AUTO_INCREMENT PRIMARY KEY,
first_name varchar(100),
last_name varchar(100),
birth_date datetime,
biography varchar(1000)
);

CREATE TABLE locations(
location_id INT AUTO_INCREMENT PRIMARY KEY,
location_name varchar(100),
street_address varchar(150),
city varchar(100),
state char(2),
zip varchar(5)
);

CREATE TABLE movie_actors(
movie_id int,
actor_id int
);

CREATE TABLE movie_locations(
movie_id int,
location_id int
);