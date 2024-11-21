BEGIN TRANSACTION;

-- Insert data
INSERT INTO OwnershipHistory (OwnerID, CarID, StartDate, EndDate) VALUES
  (1, 1, '2020-01-01', NULL),
  (2, 2, '2019-05-15', '2020-05-15'),
  (3, 3, '2018-08-20', NULL),
  (4, 4, '2017-07-10', NULL),
  (5, 5, '2016-03-05', '2017-03-05'),
  (1, 6, '2024-01-10', NULL),
  (1, 7, '2023-01-10', NULL);

COMMIT;