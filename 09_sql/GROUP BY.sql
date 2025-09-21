-- GROUP BY

-- Count of employees in each department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

--  Average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- Using GROUP BY with Multiple Columns
SELECT department, job_title, COUNT(*) AS count
FROM employees
GROUP BY department, job_title;

-- The HAVING Clause
SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;

SELECT department, AVG(salary) AS avg_salary
FROM employees
WHERE status = 'active'
GROUP BY department
HAVING AVG(salary) > 60000;