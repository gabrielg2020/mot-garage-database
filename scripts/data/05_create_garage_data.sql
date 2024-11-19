BEGIN TRANSACTION;

-- Insert data
INSERT INTO Garage (Name, PhoneNumber, Email, CertificateNumber, AddressID) VALUES
  ('Speedy Repairs', '01234567890', 'contact@speedyrepairs.com', 'CERT123456', 6),
  ('QuickFix Autos', '09876543210', 'info@quickfix.com', 'CERT654321', 7),
  ('AutoCare Garage', '01112223344', 'service@autocare.com', 'CERT111222', 8),
  ('Mechanics Plus', '02233445566', 'support@mechanicsplus.com', 'CERT333444', 9),
  ('Premier Motors', '03344556677', 'hello@premiermotors.com', 'CERT555666', 10);

COMMIT;