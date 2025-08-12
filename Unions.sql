-- Unions

SELECT first_name, last_name
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary;

-- With Duplicates
SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary;

Select first_name, last_name, 'Old Man' AS Label
from employee_demographics
where age > 40 and gender = 'Male'
union
select first_name, last_name, 'Old Lady' as Label
from employee_demographics
where age> 40 and gender = 'Female'
UNION
Select first_name, last_name, 'Highly Paid Employee' AS Label
from employee_salary
where salary > 70000
ORDER BY first_name, last_name
;