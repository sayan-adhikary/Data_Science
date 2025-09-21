--  Foreign Key Tutorial
CREATE DATABASE schoolCWH;
USE schoolCWh;
CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL
);

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
        ON UPDATE CASCADE	-- If a class is deleted, the related students will have class_id set to NULL.
        ON DELETE SET NULL	-- If a class ID changes, it will update automatically in the students table.
);
select*from classes;
select*from students;
INSERT INTO classes (class_name) VALUES ('Mathematics'), ('Science'), ('History');
INSERT INTO students (student_name, class_id) VALUES ('Alice', 1), ('Bob', 2), ('Charlie', 1);

SHOW CREATE TABLE classes;	-- To check the foreign key constraints

SELECT 						-- To see all foreign keys in the current database
    table_name, 
    column_name, 
    constraint_name, 
    referenced_table_name, 
    referenced_column_name
FROM 
    information_schema.key_column_usage
WHERE 
    referenced_table_name IS NOT NULL
    AND table_schema = 'school';
    
    
UPDATE classes SET class_id = 10 WHERE class_id = 1;	-- ON UPDATE CASCADE
DELETE FROM classes WHERE class_id = 2;					-- ON DELETE SET NULL