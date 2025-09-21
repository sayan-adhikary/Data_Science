-- Views
use harryjoins;
-- view
CREATE VIEW student_info AS
SELECT id, subject, score
FROM marks;
select*from student_info;

CREATE OR REPLACE VIEW student_info AS
SELECT id, name
FROM students;

DROP VIEW student_info;