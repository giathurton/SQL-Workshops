USE world;

#Task 2
SELECT city.Name, country.Name, city.District, city.Population
FROM country INNER JOIN city
WHERE country.Name = 'Afghanistan'
ORDER BY city.Population DESC LIMIT 5;

#Task 3
SELECT country.Name, MIN(LifeExpectancy) AS minLifeExpectancy
FROM Country
WHERE country.Region = 'Middle East'
GROUP BY country.Name
ORDER BY minLifeExpectancy
LIMIT 1;

#Task 4
SELECT SUM(GNP) FROM country
WHERE country.Region = 'Caribbean';

#Task 5
SELECT country.Name
FROM country INNER JOIN countrylanguage
ON Code = CountryCode
WHERE country.Region = 'Western Europe' AND countrylanguage.language = 'French';

#Task 6
SELECT city.Name
FROM city INNER JOIN country
ON CountryCode = Code
WHERE country.Name = 'Madagascar' AND city.Name LIKE 'A%';