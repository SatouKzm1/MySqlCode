SELECT * 
FROM parks_and_recreation.employee_salary
where salary > 50000;

SELECT * 
FROM parks_and_recreation.employee_salary
where salary < 50000;

SELECT * 
FROM parks_and_recreation.employee_salary
where salary <= 50000;

SELECT * 
FROM parks_and_recreation.employee_salary
where salary >= 50000;

SELECT * 
FROM parks_and_recreation.employee_salary
where first_name = 'Ron';

SELECT * 
FROM employee_demographics
where gender = 'male';

SELECT * 
FROM employee_demographics
where gender = 'female';

SELECT * 
FROM employee_demographics
where gender != 'male';

SELECT * 
FROM employee_demographics
where gender != 'female';

SELECT * 
FROM employee_demographics
where birth_date > '1983-06-14';

SELECT * 
FROM employee_demographics
where birth_date > '1983-06-14'
and gender = 'male';

-- and or not -- Logical Operators

SELECT * 
FROM employee_demographics
where (first_name = 'Ben' and age = 38) or age > 42
;
-- LIKE Statement--
-- % and _
SELECT * 
FROM employee_demographics
where first_name like 'Jer_';

SELECT * 
FROM employee_demographics
where first_name like 'J____';

SELECT * 
FROM employee_demographics
where first_name like 'A__%';

SELECT * 
FROM employee_demographics
where birth_date like '1994%';