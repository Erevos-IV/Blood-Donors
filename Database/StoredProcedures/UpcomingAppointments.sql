DELIMITER //
CREATE PROCEDURE PrintUpcomingAppointments()
BEGIN
SELECT AppointmentID, DonorID, AppointmentDate, don.Firstname, don.LastName, don.Phone
FROM appointments 
INNER JOIN donors as don
WHERE AppointmentDate-CURDATE() > 0;
END //
DELIMITER ;

-- This procedure will count the today's date and the date of every appointment and will print out only the appointments that are not in the day as when it will be called.
