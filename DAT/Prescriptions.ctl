LOAD DATA
INFILE 'Prescriptions.dat'
INTO TABLE Prescriptions
APPEND
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
    PrescriptionID CHAR(10),
    PatientID CHAR(10),
    DoctorID CHAR(10),
    MedicationID CHAR(10),
    Dosage CHAR(10),
    Duration CHAR(20),
    Notes CHAR(255)
)
