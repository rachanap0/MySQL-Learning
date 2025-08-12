-- Subqueries

SELECT *
FROM employee_demographics
WHERE employee_id IN 
					(SELECT employee_id
						FROM employee_salary
                        WHERE dept_id = 1)
;


Select  first_name, salary,
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary
;

Select *
FROM employee_demographics;


SELECT AVG(salary)
FROM employee_salary;

Select gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP By gender
;

Select gender, AVG(`MAX(age)`)
FROM 
(Select gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP By gender) AS Agg_table
GROUP BY gender
;


Select gender, AVG(max_age), AVG(min_age)
FROM 
(Select gender, AVG(age) AS avg_age, 
MAX(age) AS max_age,
 MIN(age) AS min_age,
COUNT(age) as count_age
FROM employee_demographics
GROUP By gender) AS Agg_table
GROUP BY gender
;