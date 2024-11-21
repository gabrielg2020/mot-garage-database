BEGIN TRANSACTION;

-- Select data to be displayed
SELECT
  Garage.GarageID,
  Garage.Name AS GarageName,
  COUNT(Certificate.CertificateID) AS TotalCertificates
FROM Garage
-- Combine Garage, EmploymentHistory, Mechanic and Certificate tables
JOIN EmploymentHistory ON Garage.GarageID = EmploymentHistory.GarageID
JOIN Mechanic ON EmploymentHistory.MechanicID = Mechanic.MechanicID
JOIN Certificate ON Mechanic.MechanicID = Certificate.MechanicID
-- Filter by EndDate
WHERE
  -- Certificate has been issued if IssueDate is between a Mechanics StartDate and EndDate
  -- If a Mechanic has not left, use the current date
  Certificate.IssueDate BETWEEN EmploymentHistory.StartDate AND IFNULL(EmploymentHistory.EndDate, DATE('now'))
-- Group by GarageID and Name
-- Order by TotalCertificates in descending order
GROUP BY Garage.GarageID, Garage.Name
ORDER BY TotalCertificates DESC;

COMMIT;
