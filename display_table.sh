# Check number of arguments
if [ $# -ne 1 ]; then
    echo "Usage: $0 <table_name>"
    exit 1
fi

TABLE_NAME=$1

# Run SQLite command to display table
sqlite3 "database/mot_garage_db.sqlite" <<EOF
.mode column
.headers on
SELECT * FROM $TABLE_NAME;
EOF