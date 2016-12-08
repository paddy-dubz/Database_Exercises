USE titles;
USE employees;


SELECT DISTINCT title
from titles
GROUP BY title ASC ;

SELECT last_name, first_name
from employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%e'
GROUP BY last_name, first_name;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%';