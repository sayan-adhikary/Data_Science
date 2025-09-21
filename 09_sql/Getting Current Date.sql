-- Getting Current Date and Time

-- Returns the current date in YYYY-MM-DD format.
SELECT CURRENT_DATE;
-- Returns the current time in HH:MM:SS format.
SELECT CURRENT_TIME;
-- Returns the current date and time.
SELECT CURRENT_TIMESTAMP;
-- or
SELECT NOW();
-- The "local" in LOCALTIME refers to the time zone configured on the MySQL server, not the user's system.
SELECT LOCALTIME;
SELECT LOCALTIMESTAMP;

-- add in table
use student_db;
alter table bank add column date_joined datetime default (now());
select*from bank;

INSERT INTO bank (id, name, age, email, date_joined)
VALUES (4, 'Lyesha Khan', 22, 'lyesha@gmail.com', current_timestamp());