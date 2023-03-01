/*SQL 5 Review: Simple SELECT Queries */

/*
1. List all the Canadian cities and their populations
*/

SELECT 
  City,
  Population
FROM north_american_cities
WHERE Country = "Canada";

/*
2. Order all the cities in the United States by their latitude from north so south
*/

SELECT
  City
FROM north_american_cities
WHERE Country = "United States"
ORDER BY Latitude DESC;

/*
3. List all the cities west of Chicago, ordered from west to east.
*/

SELECT 
  City
FROM north_american_cities
WHERE Longitude < -87.629798
ORDER BY Longitude ASC;


/*
4. List the two largest cities in Mexico (by population)
*/

SELECT
  City
FROM north_american_cities
WHERE Country = "Mexico"
ORDER BY Population DESC
Limit 2;

/*
5. List the third anf fourth largest cities (by population) in the Unites States and thier population.
*/

SELECT City
FROM north_american_cities
WHERE Country = "United States"
ORDER BY Population DESC
LIMIT 2
OFFSET 2;


