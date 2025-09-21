-- Creating a Table in MySQL

use student_db;

CREATE TABLE students (
id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100) NOT NULL DEFAULT 'No Name',
 age INT,
 email VARCHAR(100) UNIQUE,
 admission_date DATE
);

SHOW TABLES;

DESCRIBE students;

SELECT * FROM students;

drop table student;