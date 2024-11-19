BEGIN TRANSACTION;

-- Insert data
INSERT INTO Address (AddressLineOne, AddressLineTwo, County, Postcode) VALUES
  ('123 High Street', 'Apartment 4B', 'Greater London', 'SW1A 1AA'),
  ('456 Elm Road', 'Suite 5', 'West Midlands', 'B1 1AA'),
  ('789 Oak Avenue', 'Flat 2', 'Greater Manchester', 'M1 1AA'),
  ('101 Pine Lane', 'Unit 12', 'Merseyside', 'L1 1AA'),
  ('202 Maple Boulevard', 'House 6', 'South Yorkshire', 'S1 1AA'),
  ('303 Birch Street', 'Suite 7', 'Tyne and Wear', 'NE1 1AA'),
  ('404 Cedar Drive', 'Flat 9', 'West Yorkshire', 'LS1 1AA'),
  ('505 Walnut Way', 'Apartment 2', 'Nottinghamshire', 'NG1 1AA'),
  ('606 Chestnut Place', 'Unit 3', 'Leicestershire', 'LE1 1AA'),
  ('707 Ash Court', 'House 10', 'North Yorkshire', 'YO1 1AA');

COMMIT;