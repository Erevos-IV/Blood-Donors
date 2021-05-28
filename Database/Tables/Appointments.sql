CREATE TABLE Appointments (
	AppointmentID INT NOT NULL AUTO_INCREMENT,
    DonorID INT NOT NULL,
    AppointmentDate DATE NOT NULL,
    
    PRIMARY KEY(AppointmentID),
    FOREIGN KEY(DonorID) REFERENCES Donors(DonorID)
    
)ENGINE = InnoDB;
