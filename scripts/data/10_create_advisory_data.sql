BEGIN TRANSACTION;

-- Insert data
INSERT INTO Advisory (Description, Severity) VALUES 
  ('Oil change recommended', 'Low'),
  ('Brake pads need replacement', 'High'),
  ('Engine coolant level low', 'Medium'),
  ('Tire pressure low', 'Low'),
  ('Transmission fluid leak detected', 'High'),
  ('Battery needs replacement', 'High'),
  ('Air filter needs replacement', 'Low');

COMMIT;