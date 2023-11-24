CREATE TABLE Caregivers (
    Username varchar(255),
    Salt BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (Username)
);

CREATE TABLE Appointment (
    Name varchar(255) REFERENCES Vaccines,
    Time date,
    C_Username varchar(255) REFERENCES Caregivers,
    P_Username varchar(255) REFERENCES Patient,
    Appointment_id int IDENTITY(1,1),
    PRIMARY KEY (Name, Time, C_Username, P_Username, Appointment_id)
);

CREATE TABLE Patient (
    Username varchar(255),
    Salt BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (Username)
);

CREATE TABLE Availabilities (
    Time date,
    Username varchar(255) REFERENCES Caregivers,
    PRIMARY KEY (Time, Username)
);

CREATE TABLE Vaccines(
    Name varchar(255),
    Doses int,
    PRIMARY KEY (Name)
);
