-- How to Select Data in MySQL
SELECT * FROM student;

SELECT name, grade FROM student;

SELECT * FROM student 
WHERE grade = '10th';

SELECT * FROM student
WHERE age > 16;

select*from student
WHERE grade <> '10th';

select*from student
WHERE age BETWEEN 15 AND 17;

select*from student
WHERE grade IN ('10th', '12th');

select*from student
WHERE name LIKE 'A%';

select*from student
WHERE name NOT LIKE '%a';

-- This will not work as expected
SELECT * FROM student WHERE date_of_birth is NULL;
SELECT * FROM student WHERE date_of_birth IS NOT NULL;
select*from student where gender is null;

SELECT * FROM student WHERE grade = '10th' AND age = 16;

SELECT * FROM student 
WHERE (grade = '10th' OR grade = '11th') AND age >= 16;

SELECT * FROM student ORDER BY age ASC;
SELECT * FROM student ORDER BY grade desc limit 6;

SELECT * FROM student LIMIT 2, 5;

SELECT * FROM student
WHERE name LIKE 'A%';

SELECT * FROM student
WHERE date_of_birth LIKE '____-__-15';