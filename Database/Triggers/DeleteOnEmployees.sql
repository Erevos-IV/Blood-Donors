-- Will update the table employeeschanges with some valuable information.

DELIMITER //
CREATE TRIGGER Employee_TR_CatchingDeletes
AFTER DELETE ON employees
FOR EACH ROW
	BEGIN
	DECLARE changes VARCHAR(200);
        
        SET changes = CONCAT(OLD.AMKA,', ',
			     OLD.FirstName,', ',
                             OLD.LastName,', ',
                             OLD.Age,', ',
                             OLD.Phone,', ',
                             OLD.Email,', ',
                             OLD.HireDate,', ',
                             OLD.Salary, ', ');
                             
	INSERT INTO EmployeeChanges
        VALUES (CURRENT_USER(), 'DELETE', changes, CURRENT_TIMESTAMP());
	END //
	
DELIMITER ;
