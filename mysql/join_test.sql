USE join_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);



SELECT * FROM users u JOIN roles r ON u.role_id = r.id;
SELECT * FROM users;
select * FROM roles;

SELECT users.name, roles.name FROM users  JOIN roles  ON roles.id = users.role_id;

USE employees;
SELECT * FROM departments;
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
  JOIN dept_emp as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' ;

SELECT t.title AS title_name, count(*)
FROM titles as t
  JOIN dept_emp as de
    ON de.emp_no = t.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY t.title;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Name, d.dept_name Department, s.salary Salary
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
  JOIN salaries AS s
    on s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Manager , d.dept_name Department
FROM employees e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

SELECT CONCAT(e1.first_name, ' ', e1.last_name) AS Employee, CONCAT(e.first_name, ' ', e.last_name) AS Manager , d.dept_name Department
FROM employees e, employees e1
  JOIN dept_manager as dm
    ON dm.emp_no = e1.emp_no
  JOIN dept_emp as de
    ON de.emp_no = e1.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
  JOIN departments as d1
    ON d1.dept_no = de.dept_no
WHERE dm.to_date = '9999-01-01';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name Department, CONCAT(m.first_name, ' ', m.last_name) AS Manager
FROM employees as e, employees as m
  JOIN dept_emp as de
    ON de.emp_no = m.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no


  JOIN dept_manager as dm
    ON dm.emp_no = m.emp_no
  JOIN departments as d1
    ON d1.dept_no = dm.dept_no
  WHERE dm.to_date = '9999-01-01';