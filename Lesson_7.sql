/*Lesson 7: Outer Joins */

/*
1. Find the list of all buildings that have employees.
*/
SELECT DISTINCT building 
FROM employees;

/*
2. Find the list of all buildings and their capacity.
*/
SELECT 
    Building_name,
    Capacity
FROM Buildings;

/*
3. List all buildings and the distinct employee roles in each building (including empty buildings).
*/
SELECT 
    DISTINCT Building_name,
     Role
FROM Buildings
LEFT JOIN employees
    ON Building_name = Building;
