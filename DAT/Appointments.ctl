LOAD DATA
INFILE 'Appointments.dat'
INTO TABLE Appointment
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(
    AppointmentID CHAR(10),
    PatientID CHAR(10),
    DoctorID CHAR(10),
    AppointmentDate DATE 'YYYY-MM-DD',
    AppointmentTime TIMESTAMP 'HH24:MI:SS',
    Status CHAR(20),
    Type CHAR(20)
)
