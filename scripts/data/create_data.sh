# Run Database and run to insert data into SQL tables

for file in $(ls scripts/data/*.sql | sort); do
  if [ -f "$file" ]; then
    echo "Running SQL script: $file"
    sqlite3 "database/mot_garage_db.sqlite" < $file
  fi
done