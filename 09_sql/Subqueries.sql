-- Subqueries

-- Subquery in the WHERE Clause
SELECT name, salary
FROM employees
WHERE salary > (
 SELECT AVG(salary)
 FROM employees
);

-- Subquery in the FROM Clause
SELECT department, avg_salary
FROM (
 SELECT department, AVG(salary) AS avg_salary
 FROM employees
 GROUP BY department
) AS dept_avg
WHERE avg_salary > 50000;

-- Subquery in the SELECT Clause
SELECT name,
(SELECT COUNT(*) FROM projects WHERE projects.employee_id = employees.id) AS
project_count
FROM employees;

-- Correlated Subqueries
SELECT name, department, salary
FROM employees e -- 'e' is the refrence of that employees
WHERE salary > (
 SELECT AVG(salary)
 FROM employees
 WHERE department = e.department
);

