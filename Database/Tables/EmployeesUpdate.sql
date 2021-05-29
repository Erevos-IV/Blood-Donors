-- Creating a table to catch the updates.

CREATE TABLE EmployeeChanges(
    user VARCHAR(80),
    action VARCHAR(20),
    changes VARCHAR(200),
    stamp  TIMESTAMP
);
