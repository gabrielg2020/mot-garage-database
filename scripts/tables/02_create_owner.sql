-- Drop table if it exists
DROP TABLE IF EXISTS Owner;

-- Create table
CREATE TABLE Owner (
  OwnerID INTEGER PRIMARY KEY AUTOINCREMENT,
  FirstName TEXT(50) NOT NULL,
  LastName TEXT(50) NOT NULL,
  PhoneNumber TEXT(12) NOT NULL,
  Email TEXT(30) NOT NULL,
  AddressID INTEGER NOT NULL, -- Mandatory foreign key
  FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);