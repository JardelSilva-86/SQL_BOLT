/*Lesson 6: Multi-table queries with joins */

/*
1. Find the domestic and international sales for each movie.
*/
SELECT 
  T1.Title,
  T2.Domestic_sales,
  T2.International_sales
FROM movies T1
INNER JOIN Boxoffice T2
  ON T1.id = T2.Movie_id;

/*
2. Show the sales numbers for each movie that did better internationally tarher than domestically.
*/
SELECT 
  T1.Title,
  T2.Domestic_sales,
  T2.International_sales
FROM movies T1
INNER JOIN Boxoffice T2
  ON T1.id = T2.Movie_id
WHERE T2.International_Sales > Domestic_Sales;;

/*
3. List all the movies by their ratings in descending order.
*/
SELECT 
  T1.Title,
  T2.Rating
FROM movies T1
INNER JOIN Boxoffice T2
  ON T1.id = T2.Movie_id
ORDER BY Rating DESC;
