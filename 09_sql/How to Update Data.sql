-- How to Update Data in a MySQL Table

use student_db;
select*from student;

UPDATE student
SET grade = "XII"
WHERE grade = "12th";
update student set grade = "IX" where grade = "9th";
update student set gender = 'F' WHERE name not LIKE 'A%';
update student set admission_date = '2025-02-12' WHERE name LIKE 'A%';
UPDATE student
SET age = 18;

UPDATE student
SET age = age + 5
WHERE age < 18;

UPDATE student
SET gender = 'M'
WHERE email IS NULL;