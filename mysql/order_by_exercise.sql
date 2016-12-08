# noinspection SqlResolveForFile
USE employees;

SELECT *
from employees
WHERE gender = 'M'
      AND first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC , first_name ASC ;

SELECT *
from employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC ;

SELECT *
from employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%e';

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
      AND birth_date LIKE '%12-25%'
ORDER BY birth_date ASC, hire_date DESC ;

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%';