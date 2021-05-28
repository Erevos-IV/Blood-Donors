
CREATE TABLE TeamBlood(
    TBID INT NOT NULL AUTO_INCREMENT,
    Title VARCHAR(5) NOT NULL,
    SignID INT NOT NULL,
    AdditionalComments TEXT,
    
    PRIMARY KEY(TBID),
    FOREIGN KEY(SignID) REFERENCES Signs(SignID)
    

) ENGINE = InnoDB;


-- could be A or B or AB or 0.
