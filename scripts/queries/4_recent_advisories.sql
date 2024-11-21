BEGIN TRANSACTION;

-- Select data to be displayed
SELECT
  Advisory.AdvisoryID,
  Advisory.Description,
  Advisory.Severity,
  Certificate.CertificateID,
  Certificate.MechanicID,
  STRFTIME('%Y-%m-%d', Certificate.IssueDate) AS IssueDate
FROM Advisory
-- Combine Advisory and Certificate tables
JOIN Certificate ON Advisory.AdvisoryID = Certificate.AdvisoryID
-- Filter by IssueDate
WHERE
  Certificate.IssueDate >= DATE('now', '-1 month')
-- Order by IssueDate in descending order
ORDER BY Certificate.IssueDate DESC;

COMMIT;