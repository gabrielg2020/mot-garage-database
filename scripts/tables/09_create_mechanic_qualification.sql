-- Drop table if it exists
DROP TABLE IF EXISTS MechanicQualification;

-- Create table
CREATE TABLE MechanicQualification (
  MechanicQualificationID INTEGER PRIMARY KEY AUTOINCREMENT,
  MechanicID INTEGER NOT NULL,
  QualificationID INTEGER NOT NULL,
  DateIssued TEXT(10) NOT NULL,
  FOREIGN KEY (MechanicID) REFERENCES Mechanic(MechanicID),
  FOREIGN KEY (QualificationID) REFERENCES Qualification(QualificationID)
);