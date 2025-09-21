-- Stored Procedures

-- Simple Procedure to List All Employees
DELIMITER //

CREATE PROCEDURE list_employees()
BEGIN
    SELECT * FROM employees;
END //

DELIMITER ;

-- to call
CALL list_employees();

-- Stored Procedure with Parameters
DELIMITER //

CREATE PROCEDURE get_employee_by_id(IN emp_id INT)
BEGIN
    SELECT * FROM employees WHERE id = emp_id;
END //

DELIMITER ;

-- call the fn
CALL get_employee_by_id(3);

-- Dropping a Stored Procedure
DROP PROCEDURE IF EXISTS get_employee_by_id;

