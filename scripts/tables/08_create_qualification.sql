-- Drop table if it exists
DROP TABLE IF EXISTS Qualification;

-- Create table
CREATE TABLE Qualification (
  QualificationID INTEGER PRIMARY KEY AUTOINCREMENT,
  QualificationName TEXT(100) NOT NULL,
  IssuingAuthority TEXT(50) NOT NULL
);