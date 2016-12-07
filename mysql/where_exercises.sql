USE employees;

SELECT first_name
from employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
from employees
WHERE last_name LIKE 'E%';

SELECT hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT birth_date
FROM employees
WHERE birth_date LIKE '%12-25%'