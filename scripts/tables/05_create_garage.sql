-- Drop table if it exists
DROP TABLE IF EXISTS Garage;

-- Create table
CREATE TABLE Garage (
  GarageID INTEGER PRIMARY KEY AUTOINCREMENT,
  Name TEXT(50) NOT NULL,
  PhoneNumber TEXT(12) NOT NULL,
  Email TEXT(30) NOT NULL,
  CertificateNumber TEXT(20) NOT NULL,
  AddressID INTEGER NOT NULL, -- Mandatory foreign key
  FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);