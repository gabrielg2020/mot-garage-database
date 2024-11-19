BEGIN TRANSACTION;

-- Insert data
INSERT INTO OwnershipHistory (OwnerID, CarID, StartDate, EndDate) VALUES
  (1, 1, '2020-01-01', '2021-01-01'),
  (2, 2, '2019-05-15', '2020-05-15'),
  (3, 3, '2018-08-20', '2019-08-20'),
  (4, 4, '2017-07-10', '2018-07-10'),
  (5, 5, '2016-03-05', '2017-03-05');

COMMIT;