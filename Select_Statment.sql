SELECT * 
FROM Parks_and_Recreation.employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age,
age+10 #adds this column
FROM Parks_and_Recreation.employee_demographics;
# USES PEMDAS i.e order of operation (Parantheses, Exponential, Multiplication, divison, add, sub)

SELECT first_name
FROM Parks_and_Recreation.employee_demographics;

SELECT gender
FROM Parks_and_Recreation.employee_demographics;

SELECT DISTINCT gender
FROM Parks_and_Recreation.employee_demographics;

SELECT DISTINCT first_name,gender
FROM Parks_and_Recreation.employee_demographics;