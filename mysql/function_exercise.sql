# noinspection SqlResolveForFile
USE employees;

SELECT COUNT(gender)
from employees
WHERE first_name = 'Irena'
  OR first_name = 'Vidya'
  OR first_name = 'Maya'
group by gender;

SELECT *
from employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC ;

SELECT concat(first_name, ' ', last_name)
from employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%e';

SELECT datediff(hire_date, curdate())
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
      AND birth_date LIKE '%12-25%'
ORDER BY birth_date ASC, hire_date DESC ;

SELECT first_name, last_name, count(*) AS count
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name
ORDER BY count DESC;