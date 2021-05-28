-- This table is the signs of a team blood. For instance + or -... i could have A+ or A-.

CREATE TABLE Signs(
	  SignID INT NOT NULL AUTO_INCREMENT,
    Title VARCHAR(10) NOT NULL,
    
    PRIMARY KEY(SignID)
) ENGINE = InnoDB;
