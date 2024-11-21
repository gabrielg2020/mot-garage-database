BEGIN TRANSACTION;

-- Insert data
INSERT INTO Mechanic (FirstName, LastName) VALUES 
  ('John', 'Doe'),
  ('Jane', 'Smith'),
  ('Mike', 'Johnson'),
  ('Emily', 'Davis'),
  ('Chris', 'Brown'),
  ('Sarah', 'Wilson'),
  ('David', 'Martinez'); 

COMMIT;