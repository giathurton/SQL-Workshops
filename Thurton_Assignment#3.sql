CREATE DATABASE IF NOT EXISTS movie_tracker;

USE movie_tracker;

CREATE TABLE IF NOT EXISTS movies(
movie_id INT AUTO_INCREMENT PRIMARY KEY,
title varchar(200),
release_date datetime,
plot_description varchar(4000)
);

CREATE TABLE IF NOT EXISTS actors(
actor_id INT AUTO_INCREMENT PRIMARY KEY,
first_name varchar(100),
last_name varchar(100),
birth_date datetime,
biography varchar(1000),
fk_movie_id int
);

CREATE TABLE IF NOT EXISTS locations(
location_id INT AUTO_INCREMENT PRIMARY KEY,
location_name varchar(100),
street_address varchar(150),
city varchar(100),
state char(2),
zip varchar(5),
fk_movie_id int
);

CREATE TABLE IF NOT EXISTS movies_actors(
movie_id int NOT NULL,
actor_id int NOT NULL,
CONSTRAINT pk_movies_actors primary key(movies_id,actor_id)
);

CREATE TABLE IF NOT EXISTS movies_locations(
movie_id int NOT NULL,
location_id int NOT NULL,
CONSTRAINT pk_movies_locations primary key(movies_id,location_id)
);

ALTER TABLE actors ADD FOREIGN KEY (fk_movie_id) references movies(movie_id);

ALTER TABLE locations ADD FOREIGN KEY (fk_movie_id) references movies(movie_id);

ALTER TABLE movies_actors ADD FOREIGN KEY (fk_movie_id) references movies(movie_id);

ALTER TABLE movies_actors ADD FOREIGN KEY (fk_actor_id) references actors(actor_id);

ALTER TABLE movies_locations ADD FOREIGN KEY (fk_movie_id) references movies(movie_id);

ALTER TABLE movies_locations ADD FOREIGN KEY (fk_location_id) references locations(location_id);

INSERT into movies(title,release_date,plot_description) 
values('Gone Girl','2001-10-23','With his wifes disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when its suspected that he may not be innocent. On the occasion of his fifth wedding anniversary, Nick Dunne reports that his wife, Amy, has gone missing.');

INSERT into movies(title,release_date,plot_description) 
values('Inception','2005-11-20','The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased as payment for the implantation of another persons idea into a targets subconscious.');

INSERT into movies(title,release_date,plot_description) 
values('Shrek','2010-06-06','Once upon a time, in a far away swamp, there lived an ogre named Shrek whose precious solitude is suddenly shattered by an invasion of annoying fairy tale characters. They were all banished from their kingdom by the evil Lord Farquaad. Determined to save their home -- not to mention his -- Shrek cuts a deal with Farquaad and sets out to rescue Princess Fiona to be Farquaads bride. Rescuing the Princess may be small compared to her deep, dark secret.');

INSERT into actors(first_name,last_name,birth_date,biography,fk_movie_id)
values('Ben','Affleck','1972-08-15','American actor and filmmaker Benjamin Géza Affleck-Boldt was born on August 15, 1972 in Berkeley, California, and was raised in Cambridge, Massachusetts. His mother, Chris Anne (née Boldt), is a school teacher, and his father, Timothy Byers Affleck, is a social worker; the two are divorced. Ben has a younger brother, actor Casey Affleck, who was born in 1975. He is of mostly English, Irish, German, and Scottish ancestry. His middle name, Géza, is after a Hungarian family friend who was a Holocaust survivor.',3);

INSERT into actors(first_name,last_name,birth_date,biography,fk_movie_id)
values('Eddie','Murphy', '1961-04-03','Edward Regan Murphy was born April 3, 1961 in Brooklyn, New York, to Lillian Lynch, a telephone operator, and Charles Edward Murphy, a transit police officer who was also an amateur comedian and actor. After his father died, his mother married Vernon Lynch, a foreman at a Breyers Ice Cream plant. His brothers are Charlie Murphy & Vernon Lynch Jr. Eddie had aspirations of being in show business since he was a child.', 1);

INSERT into actors(first_name,last_name,birth_date,biography,fk_movie_id)
values('Leonardo','DiCaprio','1974-11-11','Few actors in the world have had a career quite as diverse as Leonardo DiCaprios. DiCaprio has gone from relatively humble beginnings, as a supporting cast member of the sitcom Growing Pains (1985) and low budget horror movies, such as Critters 3 (1991), to a major teenage heartthrob in the 1990s, as the hunky lead actor in movies such as Romeo + Juliet (1996) and Titanic (1997), to then become a leading man in Hollywood blockbusters, made by internationally renowned directors such as Martin Scorsese and Christopher Nolan.',3);

INSERT into locations(location_name,street_address,city,state,zip,fk_movie_id)
values('House','111 Millbury Lane','Brooklyn','NY', '10011',1);

INSERT into locations(location_name,street_address,city,state,zip,fk_movie_id)
values('Swamp','1 Swampy Lane','duloc','FL','15213',2);

INSERT into locations(location_name,street_address,city,state,zip,fk_movie_id)
values('Dreams','2 Sleep Street','Pittsburgh','PA','15212',3);

INSERT into movies_actors(movie_id,actor_id)
values(1,1);

INSERT into movies_actors(movie_id,actor_id)
values(2,2);

INSERT into movies_locations(movie_id,location_id)
values(1,1);

INSERT into movies_locations(movie_id,location_id)
values(2,2);



SELECT * FROM actors ORDER BY last_name LIMIT 2;

SELECT  location_name , street_address,  city FROM locations ORDER BY location_name;

UPDATE zip SET zip=15217;

SELECT * FROM movies WHERE release_date BETWEEN 2000-09-09 AND 2020-09-09;

DELETE FROM actors WHERE first_name= Leonardo AND last_name= DiCaprio AND birth_date=1974-11-11;

