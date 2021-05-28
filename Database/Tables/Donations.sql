CREATE TABLE Donations(
    DonationID INT NOT NULL AUTO_INCREMENT,
    DonorID INT NOT NULL,
    DateOfDonation DATE NOT NULL,
    
    PRIMARY KEY(DonationID),
    FOREIGN KEY(DonorID) REFERENCES Donors(DonorID)
) ENGINE = InnoDB;
