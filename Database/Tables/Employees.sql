USE BloodDonors;

CREATE TABLE Employees(
	-- AMKA is something like a big ID unique for every person.
	AMKA BIGINT NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Email VARCHAR(55) DEFAULT NULL,
    HireDate TIMESTAMP NOT NULL,
    Salary INT NOT NULL,
    
    PRIMARY KEY(AMKA)
    
)
