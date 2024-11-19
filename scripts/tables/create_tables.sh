# Run Database and run to build SQL tables


# Address table
sqlite3 database/mot_garage_db.sqlite < scripts/tables/create_address.sql
# Owner table
sqlite3 database/mot_garage_db.sqlite < scripts/tables/create_owner.sql
