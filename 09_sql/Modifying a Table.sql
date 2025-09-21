-- Modifying a Table in MySQL

RENAME TABLE students TO student;

describe student;
-- id, name, age, grade, date_of_birth) VALUES (1, 'Ayesha Khan', 16, '10th', '2007-05-15')	Error Code: 1054. Unknown column 'grade' in 'field list'	0.000 sec

ALTER TABLE student RENAME COLUMN U_id TO id;

ALTER TABLE student DROP COLUMN u_id;

ALTER TABLE student ADD COLUMN gender VARCHAR(10);

alter table student add column grade varchar(10);

ALTER TABLE student ADD COLUMN date_of_birth DATE;

ALTER TABLE student MODIFY COLUMN name VARCHAR(150) NOT NULL;

ALTER TABLE student MODIFY COLUMN gender varchar(10) AFTER name;