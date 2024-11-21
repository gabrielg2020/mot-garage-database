# Check if a number was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 NUMBER"
  exit 1
fi

FILE_PATH=( "scripts/queries/$1_"* )

# Check if the file exists
if [ -f "$FILE_PATH" ]; then
  # Display the query results
  sqlite3 "database/mot_garage_db.sqlite" <<EOF
.mode column
.headers on
.read $FILE_PATH
EOF
else
  echo "Error: File '$FILE_PATH' does not exist."
  exit 1
fi
