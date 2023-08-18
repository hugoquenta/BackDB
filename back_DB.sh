# you can upload this script into your server and give permission in cpanel
#!/bin/bash
# Database credentials
user="root"
password="example123"
host="localhost"
# data base name
db_name="exampleDB"
# new name backup Data Base
db_nameB="example_new"

# path´s backup Data Base
backup_path="/home/site_example/public_html/backDB"
# string data works a hash in new name Data base
date=$(date +"%Y-%m-%d_%H%M")

# Set default file permissions
umask 177

# Dump database into SQL file
mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path/$db_nameB-$date.sql
