LOAD DATA
INFILE 'Doctors.dat'
INTO TABLE Doctors
APPEND
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(
    DoctorID CHAR(10),
    FirstName CHAR(50),
    LastName CHAR(50),
    Specialty CHAR(50),
    YearsOfExperience INTEGER EXTERNAL,
    Email CHAR(100),
    Phone CHAR(50),
    PatientSatisfactionRating FLOAT EXTERNAL
)