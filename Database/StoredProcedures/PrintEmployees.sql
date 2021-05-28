-- Simply prints every employee that has been added to the database.

DELIMITER //
CREATE PROCEDURE PrintEmployees()
BEGIN
 SELECT *
 FROM employees;
END //
DELIMITER ;
