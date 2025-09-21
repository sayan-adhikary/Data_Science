-- How to Delete Data in a MySQL Table
use student_db;
select*from student;

DELETE FROM student
WHERE id>95;

DELETE FROM student
WHERE grade = '9th';

DELETE FROM student
WHERE grade = '9th';

DELETE FROM student
WHERE age < 16;

DELETE FROM student
WHERE grade IS NULL;

--  Delete All Rows
DELETE FROM student;

-- Completely Remove the Table
DROP TABLE student;