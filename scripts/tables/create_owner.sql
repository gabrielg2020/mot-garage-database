-- Drop table if it exists
DROP TABLE IF EXISTS Owner;

-- Create table
CREATE TABLE Owner (
  OwnerID INTEGER PRIMARY KEY AUTOINCREMENT,
  FirstName TEXT NOT NULL,
  LastName TEXT NOT NULL,
  PhoneNumber TEXT NOT NULL,
  Email TEXT NOT NULL
  -- Add address table later
  -- FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);