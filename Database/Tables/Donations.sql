    CREATE TABLE Donations(
	DonationID INT NOT NULL AUTO_INCREMENT,
    EmployeeAMKA BIGINT NOT NULL,
    DonorID INT NOT NULL,
    DateOfDonation TIMESTAMP NOT NULL,
    
    PRIMARY KEY(DonationID),
    FOREIGN KEY(DonorID) REFERENCES Donors(DonorID),
    FOREIGN KEY(EmployeeAMKA) REFERENCES Employees(AMKA)
    
) ENGINE = InnoDB;

