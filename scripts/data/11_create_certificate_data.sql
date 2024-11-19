BEGIN TRANSACTION;

-- Insert data
INSERT INTO Certificate (IssueDate, ExpiryDate, Result, AdvisoryID, CarID, MechanicID) VALUES 
  ('2021-01-01', '2022-01-01', 1, 1, 1, 1),
  ('2021-02-01', '2022-02-01', 0, 2, 2, 2),
  ('2021-03-01', '2022-03-01', 1, 3, 3, 3),
  ('2021-04-01', '2022-04-01', 0, 4, 4, 4),
  ('2021-05-01', '2022-05-01', 1, 5, 5, 5);

COMMIT;