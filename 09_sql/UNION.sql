-- UNION
use harryjoins;

SELECT id, subject FROM marks
UNION
SELECT id, name FROM students
ORDER BY id;