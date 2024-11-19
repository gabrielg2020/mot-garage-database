-- Drop table if it exists
DROP TABLE IF EXISTS Address;

-- Create table
CREATE TABLE Address (
  AddressID INTEGER PRIMARY KEY AUTOINCREMENT,
  AddressLineOne TEXT(50) NOT NULL,
  AddressLineTwo TEXT(50) NOT NULL,
  County TEXT(30) NOT NULL,
  Postcode TEXT(7) NOT NULL
);