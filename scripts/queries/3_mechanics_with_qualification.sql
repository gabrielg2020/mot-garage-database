BEGIN TRANSACTION;

-- Select data to be displayed
SELECT
  Mechanic.MechanicID,
  Mechanic.FirstName,
  Mechanic.LastName,
  Qualification.QualificationName,
  Garage.Name AS GarageName,
  EmploymentHistory.StartDate
FROM Mechanic
-- Combine Mechanic, MechanicQualification, Qualification, EmploymentHistory and Garage tables
JOIN MechanicQualification ON Mechanic.MechanicID = MechanicQualification.MechanicID
JOIN Qualification ON MechanicQualification.QualificationID = Qualification.QualificationID
JOIN EmploymentHistory ON Mechanic.MechanicID = EmploymentHistory.MechanicID
JOIN Garage ON EmploymentHistory.GarageID = Garage.GarageID
-- Filter by EndDate and Qualification Name
WHERE
  -- Mechanic hasn't left
  EmploymentHistory.EndDate IS NULL
  AND Qualification.QualificationName = 'Certified Mechanic';

COMMIT;