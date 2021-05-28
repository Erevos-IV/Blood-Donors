USE BloodDonors; 

DELIMITER //
CREATE PROCEDURE PrintDonors()
BEGIN
	SELECT don.DonorID, CONCAT(don.FirstName, ' ', don.LastName) AS FullName, don.hone, don.Age, don.AMKA, addr.City, tea.Title, sig.Title
	FROM donors AS don
	INNER JOIN signs AS sig USING(SignID)
	INNER JOIN TeamBlood AS tea USING(TBID)
	INNER JOIN address AS addr USING(AddressID);
END //
DELIMITER ;
