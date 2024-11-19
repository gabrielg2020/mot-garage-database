-- Drop table if it exists
DROP TABLE IF EXISTS Mechanic;

-- Create table
CREATE TABLE Mechanic (
  MechanicID INTEGER PRIMARY KEY AUTOINCREMENT,
  FirstName TEXT(50) NOT NULL,
  LastName TEXT(50) NOT NULL
);