LOAD DATA
INFILE 'Patients.dat'
INTO TABLE Patients
APPEND
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
    PatientID CHAR(10),
    FirstName CHAR(50),
    LastName CHAR(50),
    DateOfBirth DATE "YYYY-MM-DD",
    Gender CHAR(1),
    Address CHAR(255),
    Phone CHAR(20),
    Email CHAR(100),
    EmergencyContact CHAR(100),
    EmergencyPhone CHAR(20)
)
