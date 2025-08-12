-- Temporary Tables
-- First way
CREATE TEMPORARY TABLE temp_table
( first_name varchar(50),
last_name varchar(50),
favorite_move varchar(100)
);


INSERT INTO temp_table
VALUES('Rachana', 'Pandey', 'K3G');

SELECT *
FROM temp_table;

-- Second way to do it
SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM  employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k