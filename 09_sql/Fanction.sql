-- Functions
SELECT CONCAT('Hello', ' ', 'World') AS greeting;
-- Output: Hello World

SELECT NOW();
-- Output: 2025-05-03 14:20:45 (example)

SELECT (DATEDIFF(now(), '2003-06-18')/365);
-- O/p:- 22.2493

SELECT ROUND(12.6789, 2);
-- O/p: 12.68

SELECT LENGTH('Harry');
-- Output: 5