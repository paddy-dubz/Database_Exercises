USE employees;

SELECT *
from employees
WHERE first_name = 'Irena'
AND gender = 'M'
OR first_name = 'Vidya'
OR first_name ='Maya';

SELECT *
from employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%e';

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';