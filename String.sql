-- String functions

SELECT length('skyfall');

SELECT first_name, length(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('sky');
SELECT LOWER('sky');

SELECT first_name, UPPER(first_name), LOWER(first_name)
FROM employee_demographics 
ORDER BY 2;

-- Trim

SELECT TRIM('       SKY       ');
SELECT LTRIM('       SKY       ');
SELECT RTRIM('       SKY       ');

-- substring

SELECT first_name, LEFT(first_name, 4)
FROM employee_demographics;

SELECT first_name, LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 2, 3),
birth_date,
SUBSTRING(birth_date, 6,2) AS birth_month
FROM employee_demographics;

-- Replace
SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

-- Locate

SELECT LOCATE('x', 'Alexander');

SELECT first_name, Locate('An', first_name)
FROM employee_demographics;

-- Concatenation

SELECT first_name, last_name, 
CONCAT(first_name,' ', last_name)
FROM employee_demographics;