BEGIN TRANSACTION;

-- Insert data
INSERT INTO EmploymentHistory (GarageID, MechanicID, StartDate, EndDate) VALUES 
  (1, 1, '2021-01-01', NULL),
  (2, 2, '2020-05-15', '2021-05-14'),
  (3, 3, '2019-03-01', NULL),
  (1, 4, '2018-07-01', NULL),
  (2, 5, '2021-06-01', '2022-05-31'),
  (1, 6, '2022-06-01', NULL),
  (2, 7, '2023-06-01', NULL);

COMMIT;