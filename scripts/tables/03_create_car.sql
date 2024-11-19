-- Drop table if it exists
DROP TABLE IF EXISTS Car;

-- Create table
CREATE TABLE Car (
  CarID INTEGER PRIMARY KEY AUTOINCREMENT,
  RegistrationNumber TEXT NOT NULL,
  Make TEXT NOT NULL,
  Model TEXT NOT NULL,
  Year INTEGER NOT NULL,
  VIN INTEGER NOT NULL,
  OwnerID INTEGER NOT NULL, -- Mandatory foreign key
  FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID)
);