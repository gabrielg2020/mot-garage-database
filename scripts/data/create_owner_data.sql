BEGIN TRANSACTION;

INSERT INTO Owner (FirstName, LastName, PhoneNumber, Email) VALUES
  ('John', 'Doe', '+44 7123 456789', 'john.doe@example.com'),
  ('Jane', 'Smith', '+44 7123 456789', 'jane.smith@example.com'),
  ('Bob', 'Johnson', '+44 7123 456789', 'bob.johnson@example.com');

COMMIT;