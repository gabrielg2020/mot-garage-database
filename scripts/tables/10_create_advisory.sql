-- Drop table if it exists
DROP TABLE IF EXISTS Advisory;

-- Create table
CREATE TABLE Advisory (
  AdvisoryID INTEGER PRIMARY KEY AUTOINCREMENT,
  Description TEXT NOT NULL,
  Severity TEXT NOT NULL Check (Severity IN ('Low', 'Medium', 'High')),
);