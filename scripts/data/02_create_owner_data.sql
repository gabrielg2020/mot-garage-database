BEGIN TRANSACTION;

-- Insert data
INSERT INTO Owner (FirstName, LastName, PhoneNumber, Email, AddressID) VALUES
('John', 'Doe', '+447700900001', 'john.doe@example.com', 1),
('Jane', 'Smith', '+447700900002', 'jane.smith@example.com', 2),
('Robert', 'Brown', '+447700900003', 'robert.brown@example.com', 3),
('Emily', 'Johnson', '+447700900004', 'emily.johnson@example.com', 4),
('Michael', 'Williams', '+447700900005', 'michael.williams@example.com', 5);

COMMIT;