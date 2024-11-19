-- Drop table if it exists
DROP TABLE IF EXISTS EmploymentHistory;

-- Create table
CREATE TABLE EmploymentHistory (
  EmploymentID INTEGER PRIMARY KEY AUTOINCREMENT,
  GarageID INTEGER NOT NULL, -- Mandatory foreign key
  MechanicID INTEGER NOT NULL, -- Mandatory foreign key
  StartDate TEXT(10) NOT NULL,
  EndDate TEXT(10) NOT NULL,
  FOREIGN KEY (GarageID) REFERENCES Garage(GarageID),
  FOREIGN KEY (MechanicID) REFERENCES Mechanic(MechanicID)
);