CREATE TABLE Donors(
	DonorID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    AMKA BIGINT NOT NULL,
    AddressID INT NOT NULL,
    TBID INT NOT NULL,
    SignID INT NOT NULL,
    
    PRIMARY KEY(DonorID),
    FOREIGN KEY(AddressID) REFERENCES Address(AddressID),
    FOREIGN KEY(TBID) REFERENCES TeamBlood(TBID),
    FOREIGN KEY(SignID) REFERENCES Signs (SignID)
    
) ENGINE = InnoDB;

-- AMKA is a unique number to identify a person.
