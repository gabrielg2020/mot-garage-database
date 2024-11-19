BEGIN TRANSACTION;

-- Insert data
INSERT INTO Qualification (QualificationName, IssuingAuthority) VALUES 
  ('Certified Mechanic', 'Automotive Service Excellence'),
  ('Advanced Engine Performance Specialist', 'National Institute for Automotive Service Excellence'),
  ('Brake Systems Specialist', 'Automotive Service Excellence'),
  ('Electrical/Electronic Systems Specialist', 'National Institute for Automotive Service Excellence'),
  ('Master Automobile Technician', 'Automotive Service Excellence');

COMMIT;