-- Drop table if it exists
DROP TABLE IF EXISTS Address;

-- Create table
CREATE TABLE Address (
  AddressID INTEGER PRIMARY KEY AUTOINCREMENT,
  AddressLineOne TEXT NOT NULL,
  AddressLineTwo TEXT NOT NULL,
  Country TEXT NOT NULL,
  Postcode TEXT NOT NULL
);