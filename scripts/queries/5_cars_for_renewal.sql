BEGIN TRANSACTION;

-- Select data to be displayed
SELECT
  Owner.FirstName,
  Owner.LastName,
  Owner.Email,
  Car.CarID,
  Car.Make,
  Car.Model,
  Car.RegistrationNumber,
  STRFTIME('%Y-%m-%d', Certificate.ExpiryDate) AS ExpiryDate
FROM (
  -- Select the most recent certificate for each car
  SELECT
    CarID,
    MAX(CertificateID) AS LatestCertificateID
  FROM Certificate
  GROUP BY CarID
)
-- Combine Owner, Certificate, Car and Ownership History tables
JOIN Owner ON Owner.OwnerID = OwnershipHistory.OwnerID
JOIN Certificate ON Certificate.CertificateID = LatestCertificateID
JOIN Car ON Car.CarID = Certificate.CarID
JOIN OwnershipHistory ON Car.CarID = OwnershipHistory.CarID
-- Filter 
WHERE
  -- Car is still owned
  OwnershipHistory.EndDate IS NULL
  -- Certificate is due to expire in the next month
  AND Certificate.ExpiryDate BETWEEN DATE('now') AND DATE('now', '+1 month')
-- Order by ExpiryDate in ascending order
ORDER BY Certificate.ExpiryDate ASC;
COMMIT;