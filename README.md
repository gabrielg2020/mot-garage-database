# mot-garage-database

# Score Recevied: 55%🎉

This was built for my Data Modelling and Database Design Module (QAC020C123A).

## Description

This is meant to represent that database model that a MOT garage might have.

This a **dummy** database, with **dummy** tables and **dummy** data.

## Prerequisites

- sqlite3

## Steps

### 1. Check sqlite3 version

> [!NOTE]
> If this errors, you need to install sqlite3.

```shell
sqlite3 -version
```

### 2. Clone this repo

```shell
git clone https://github.com/gabrielg2020/mot-garage-database.git && cd mot-garage-database
```

> [!CAUTION]
> Before running this command please make sure that you are in the correct directory.

```shell
find . -type f -name "*.sh" -exec chmod +x {} \;

```

### 3. Create database file

```shell
touch database/mot_garage_db.sqlite
```

### 4. Run rebuilding script

```shell
./rebuild_database.sh
```

## Helper scripts

### Display Tables
```shell
./display_table.sh <table_name>
```

### List Tables

### List all tables
```shell
./list_tables.sh <table_name>
```

### Find a specific table
```shell
./list_tables.sh -f <table_name>
```

## Run Query

```shell
./run_query.sh <1|2|3|4|5>
```