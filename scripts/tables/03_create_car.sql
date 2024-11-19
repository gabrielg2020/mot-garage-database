-- Drop table if it exists
DROP TABLE IF EXISTS Car;

-- Create table
CREATE TABLE Car (
  CarID INTEGER PRIMARY KEY AUTOINCREMENT,
  RegistrationNumber TEXT(7) NOT NULL,
  Make TEXT(20) NOT NULL,
  Model TEXT(50) NOT NULL,
  Year INTEGER(4) NOT NULL,
  VIN INTEGER(17) NOT NULL,
  OwnerID INTEGER NOT NULL, -- Mandatory foreign key
  FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID)
);