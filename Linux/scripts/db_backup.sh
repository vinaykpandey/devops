#!/bin/bash

# Database credentials
user=""
password=""
host=""
db_name=""
# Other options
backup_path="/path/to/your/home/_backup/mysql"
date=$(date +"%d-%b-%Y")
# Set default file permissions
umask 177

# Dump database into SQL file
mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path/$db_name-$date.sql

https://simon-davies.name/bash/backing-up-mysql-databases


