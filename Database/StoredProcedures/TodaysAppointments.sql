DELIMITER //
CREATE PROCEDURE PrintTodayAppointments()
BEGIN
    DECLARE Todayday INT(5); 
    SET Todayday = EXTRACT(Day FROM CURRENT_DATE);
    	SELECT * 
        FROM Appointments
 	WHERE EXTRACT(DAY FROM AppointmentDate) = Todayday;
END //
DELIMITER ;

CALL PrintTodayAppointments();

-- This function will print all the appointments that are the same day as the day of the "call" date.
