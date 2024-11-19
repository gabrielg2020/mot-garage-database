START_TIME=$(date +%s)

# Remove old database and create a new one
rm -f database/mot_garage_db.sqlite
touch database/mot_garage_db.sqlite

# Run SQL scripts to rebuild database tables
./scripts/tables/create_tables.sh
# Run SQL script to populate database tables
# TODO: Uncomment the following line to populate the database
#./scripts/data/create_data.sh

echo "Database has been rebuilt and populated."

END_TIME=$(date +%s)

# Calculate the elapsed time
ELAPSED_TIME=$((END_TIME - START_TIME))

echo "Script execution time: $ELAPSED_TIME seconds"