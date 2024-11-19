BEGIN TRANSACTION;

-- Insert data
INSERT INTO MechanicQualification (MechanicID, QualificationID, DateIssued) VALUES 
  (1, 1, '2020-01-15'),
  (2, 2, '2019-06-20'),
  (3, 3, '2018-11-05'),
  (4, 4, '2021-03-10'),
  (5, 5, '2022-07-25');

COMMIT;