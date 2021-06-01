DELIMITER //
CREATE PROCEDURE DonorsByAMKA(IN amk BIGINT)
BEGIN 

SELECT don.DonorID, CONCAT(don.FirstNaMe,' ', don.LastName) AS FullName, don.Phone, tmbl.Title AS Blood_Team, ad.City
FROM donors AS don 
INNER JOIN address AS ad USING(AddressID)
INNER JOIN teamblood AS tmbl USING(TBID)
WHERE don.AMKA = amk;

END //
DELIMITER ;


-- Employee will give the procedure any AMKA and will get back information about the person.
