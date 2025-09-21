-- Transactions in MySQL
-- Atomicity: All or nothing.
-- Consistency: Valid state before and after.
-- Isolation: Transactions do not interfere.
-- Durability: Changes persist after commit.

SELECT @@autocommit;
set autocommit = 0;	-- disable
set autocommit = 1;	-- enable

use student_db;
CREATE TABLE bank (
id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100) NOT NULL DEFAULT 'No Name',
 age INT,
 email VARCHAR(100) UNIQUE
);
select*from bank;

INSERT INTO bank (id, name, age, email) 
VALUES (1, 'Ayesha Khan',16, 'sayan@gmail.com'),
(2, 'Syesha Khan',17, 'sayan1@gmail.com');

START TRANSACTION;

UPDATE bank SET age = age - 1 WHERE id = 1;
UPDATE bank SET age = age + 1 WHERE id = 2;
ROLLBACK;
COMMIT;