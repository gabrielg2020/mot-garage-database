BEGIN TRANSACTION;

-- Insert data

INSERT INTO Car (RegistrationNumber, Make, Model, Year, VIN, OwnerID) VALUES
  ('AB12CDE', 'Ford', 'Focus', 2015, 12345678901234567, 1),
  ('FG34HIJ', 'Vauxhall', 'Corsa', 2018, 23456789012345678, 2),
  ('KL56MNO', 'BMW', '320i', 2017, 34567890123456789, 3),
  ('PQ78RST', 'Audi', 'A4', 2016, 45678901234567890, 4),
  ('UV90WXY', 'Volkswagen', 'Golf', 2019, 56789012345678901, 5);

COMMIT;