-- Case statements

SELECT first_name, last_name, age, 
CASE
	WHEN age <= 30 THEN 'young'
    WHEN age BETWEEN 31 and 50 THEN 'old'
    WHEN age >=50 THEN 'elderly'
END AS Age_Bracket
FROM employee_demographics;

-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus

Select first_name, last_name, salary,
CASE
	WHEN salary <50000 THEN salary+ (salary*0.05) # or we can say salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS New_Salary,
CASE
	WHEN dept_id = 6 THEN salary * 0.10
END AS Bonus
FROM employee_salary;

Select *
FROM employee_salary;

Select *
FROM parks_departments #finance is 6