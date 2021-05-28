DELIMITER //
CREATE PROCEDURE PrintUpcomingAppointments()
BEGIN
	SELECT AppointmentID, don.DonorID, AppointmentDate, don.Firstname, don.LastName, don.Phone
	FROM appointments 
	INNER JOIN donors as don
	WHERE AppointmentDate-CURDATE() > 0;
END //
DELIMITER ;
