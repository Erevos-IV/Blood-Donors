-- Creating trigger to catch any insert into employees.

DELIMITER //
CREATE TRIGGER Employee_TR_CatchingInserts
AFTER INSERT ON employees
FOR EACH ROW
	BEGIN
	DECLARE changes VARCHAR(200);
        
        SET changes = CONCAT(NEW.AMKA,', ',
		             NEW.FirstName,', ',
                             NEW.LastName,', ',
                             NEW.Age,', ',
                             NEW.Phone,', ',
                             NEW.Email,', ',
                             NEW.HireDate,', ',
                             NEW.Salary, ', ');
                             
	INSERT INTO EmployeeChanges
        VALUES (CURRENT_USER(), 'INSERT', changes, CURRENT_TIMESTAMP());
	END //
DELIMITER ;
