-- Drop table if it exists
DROP TABLE IF EXISTS Certificate;

-- Create table
CREATE TABLE Certificate (
  CertificateID INTEGER PRIMARY KEY AUTOINCREMENT,
  IssueDate TEXT(10) NOT NULL,
  ExpiryDate TEXT(10) NOT NULL,
  Result INTEGER NOT NULL Check (Result IN (0, 1)),
  AdvisoryID INTEGER NOT NULL,
  CarID INTEGER NOT NULL,
  MechanicID INTEGER NOT NULL,
  FOREIGN KEY (AdvisoryID) REFERENCES Advisory(AdvisoryID),
  FOREIGN KEY (CarID) REFERENCES Car(CarID),
  FOREIGN KEY (MechanicID) REFERENCES Mechanic(MechanicID)
);