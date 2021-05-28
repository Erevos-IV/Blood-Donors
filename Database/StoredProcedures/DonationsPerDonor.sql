DELIMITER //
CREATE PROCEDURE DonationsPerDonor()
BEGIN 
SELECT don.DonorID, CONCAT(Firstname, ' ', Lastname) AS fullName, don.Phone, COUNT(app.DonorID) AS TimesDonated
FROM Appointments as app
INNER JOIN donors as don USING(DonorID)
GROUP BY don.DonorID;
END //
DELIMITER ;
