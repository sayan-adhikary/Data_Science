-- 1661. Average Time of Process per Machine leet code problem sql
-- Drop table if it exists
create database practise_regular;
use practise_regular;	
DROP TABLE IF EXISTS Activity;

-- Create table
CREATE TABLE Activity (
    machine_id INT,
    process_id INT,
    activity_type VARCHAR(10),
    timestamp DECIMAL(10, 3)
);

-- Insert sample data
INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES
(0, 0, 'start', 0.712),
(0, 0, 'end', 1.520),
(0, 1, 'start', 3.140),
(0, 1, 'end', 4.120),
 (1, 0, 'start', 0.550),
(1, 0, 'end', 1.550),
( 1, 1, 'start', 0.430),
(1, 1, 'end', 1.420),
(2, 0, 'start', 4.100),
(2, 0, 'end', 4.512),
(2, 1, 'start', 2.500),
(2, 1, 'end', 5.000);

select*from activity;

-- Query to calculate processing time
select a1.machine_id, round(avg(a2.timestamp - a1.timestamp),3) as processing_time
from activity a1
join activity a2
on a1.machine_id = a2.machine_id
and a1.process_id = a2.process_id
and a1.activity_type = 'start'
and a2.activity_type = 'end'
group by a1.machine_id;
