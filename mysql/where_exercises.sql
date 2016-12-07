USE employees;

SELECT first_name
from employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
from employees
WHERE last_name LIKE 'E%';
