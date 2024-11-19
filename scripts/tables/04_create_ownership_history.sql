-- Drop table if it exists
DROP TABLE IF EXISTS OwnershipHistory;

-- Create table
CREATE TABLE OwnershipHistory (
  OwnershipID INTEGER PRIMARY KEY AUTOINCREMENT,
  OwnerID INTEGER NOT NULL, -- Mandatory foreign key
  CarID INTEGER NOT NULL, -- Mandatory foreign key
  StartDate TEXT(10) NOT NULL,
  EndDate TEXT(10)
);