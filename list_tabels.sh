# Default action is to list all tables
action="list_tables"
table_name=""

while getopts ":f:" opt; do
  case ${opt} in
    f )
      action="find_table"
      table_name=$OPTARG
      ;;
    \? )
      echo "Usage: $0 [-f <table_name>]"
      exit 1
      ;;
  esac
done

# Run SQLite command to list tables
if [ "$action" = "list_tables" ]; then
  # List all tables
  sqlite3 "database/mot_garage_db.sqlite" <<EOF
.tables
EOF
elif [ "$action" = "find_table" ]; then
  # Show tables that match the table name
  sqlite3 "database/mot_garage_db.sqlite" <<EOF
.tables '%$table_name%'
EOF
fi
