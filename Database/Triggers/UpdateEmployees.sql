DELIMITER //
CREATE TRIGGER Employee_TR_Update
AFTER UPDATE ON employees
FOR EACH ROW
	BEGIN
	DECLARE changes VARCHAR(200);
	DECLARE beforechanges VARCHAR(200);
		set beforechanges = CONCAT(OLD.AMKA,', ',
		               OLD.FirstName,', ',
                               OLD.LastName,', ',
                               OLD.Age,', ',
                               OLD.Phone,', ',
                               OLD.Email,', ',
                               OLD.HireDate,', ',
                               OLD.Salary);
                             
        SET changes = CONCAT(NEW.AMKA,', ',
		             NEW.FirstName,', ',
                             NEW.LastName,', ',
                             NEW.Age,', ',
                             NEW.Phone,', ',
                             NEW.Email,', ',
                             NEW.HireDate,', ',
                             NEW.Salary, ', ');
                             
	INSERT INTO EmployeeChanges
        VALUES (CURRENT_USER(), 'UPDATE', beforechanges, changes, CURRENT_TIMESTAMP());
        
	END //
DELIMITER ;
