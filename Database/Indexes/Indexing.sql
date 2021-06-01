-- Indexing columns help us search in a database in a faster way. Although it can be beneficial someotimes when a table is getting inserts every day,
-- it may cause slower performance and should be avoided.

CREATE INDEX employeeIDX
ON employees(AMKA);

CREATE INDEX DonorIDX
ON donors(DonorID);

CREATE INDEX donationsIDX
ON donations(DonationID);

CREATE INDEX appointmentsIDX
ON appointments(AppointmentID);
