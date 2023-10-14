LOAD DATA
INFILE 'medications.dat'
INTO TABLE Medications
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
    MedicationID CHAR,
    Name CHAR,
    Type CHAR,
    Manufacturer CHAR,
    ExpiryDate DATE "YYYY-MM-DD",
    Dosage CHAR
)