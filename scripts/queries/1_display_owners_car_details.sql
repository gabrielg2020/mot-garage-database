BEGIN TRANSACTION;

-- Select data to be displayed
Select
  Owner.FirstName,
  Owner.LastName,
  Car.Make,
  Car.Model,
  Car.Year,
  Car.RegistrationNumber
FROM Owner
-- Combine Owner, OwnershipHistory and Car tables
JOIN OwnershipHistory ON Owner.OwnerID = OwnershipHistory.OwnerID
JOIN Car ON OwnershipHistory.CarID = Car.CarID
-- Filter by OwnerID & Where EndDate is NULL
WHERE
  Owner.OwnerID = 1
  AND OwnershipHistory.EndDate IS NULL;

COMMIT;
