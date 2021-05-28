USE BloodDonors;

-- This will simply print all the donors.
DELIMITER // 
CREATE PROCEDURE PrintDonors()
BEGIN
SELECT *
FROM donors;
END //
DELIMITER ;
